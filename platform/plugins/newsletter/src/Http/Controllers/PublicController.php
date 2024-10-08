<?php

namespace Botble\Newsletter\Http\Controllers;

use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Newsletter\Enums\NewsletterStatusEnum;
use Botble\Newsletter\Events\SubscribeNewsletterEvent;
use Botble\Newsletter\Http\Requests\NewsletterRequest;
use Botble\Newsletter\Repositories\Interfaces\NewsletterInterface;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Newsletter;
use SendGrid;
use URL;

class PublicController extends Controller
{
    /**
     * @var NewsletterInterface
     */
    protected $newsletterRepository;

    /**
     * PublicController constructor.
     * @param NewsletterInterface $newsletterRepository
     */
    public function __construct(NewsletterInterface $newsletterRepository)
    {
        $this->newsletterRepository = $newsletterRepository;
    }

    /**
     * @param NewsletterRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function postSubscribe(NewsletterRequest $request, BaseHttpResponse $response)
    {
        $this->newsletterRepository->createOrUpdate($request->input());

        return $response->setMessage(__('Subscribe to newsletter successfully!'));
    }

    /**
     * Unsubscribe newsletter with token. change status to false
     * @param int $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function getUnsubscribe($id, Request $request, BaseHttpResponse $response)
    {
        if (!URL::hasValidSignature($request)) {
            abort(404);
        }

        $newsletter = $this->newsletterRepository->getFirstBy([
            'id'     => $id,
            'status' => NewsletterStatusEnum::SUBSCRIBED,
        ]);

        if ($newsletter) {
            $newsletter->status = NewsletterStatusEnum::UNSUBSCRIBED;
            $this->newsletterRepository->createOrUpdate($newsletter);

            $mailchimpApiKey = setting('newsletter_mailchimp_api_key');
            $mailchimpListId = setting('newsletter_mailchimp_list_id');

            if ($mailchimpApiKey && $mailchimpListId) {
                Newsletter::unsubscribe($newsletter->email);
            }

            return $response
                ->setNextUrl(route('public.index'))
                ->setMessage(__('Unsubscribe to newsletter successfully'));
        }

        return $response
            ->setError()
            ->setNextUrl(route('public.index'))
            ->setMessage(__('Your email does not exist in the system or you have unsubscribed already!'));
    }
}
