        <footer>
            <div class="containers">
                <div class="row">
                    <div class="col-md-3 mgt">
                        <div class="ft_1">
                            <h2 class="font-20 font-weight-bold mgb-20 text_red text-uppercase">{{ theme_option('name_company') }}</h2>
                            <div class="ft_info mgb-20">
                                <p><strong>Địa chỉ: </strong>{{ theme_option('address') }}</p>
                            </div>
                            <div class="ft_info mgb-20">
                                <p><strong>Hotline</strong></p>
                                <p><a href="tel:{{ theme_option('phone') }}" title="">{{ theme_option('phone') }}</a> </p>
                            </div>
                            <div class="ft_info">
                                <p><strong>Email</strong></p>
                                <p><a href="mailto:{{ theme_option('email') }}" title="">{{ theme_option('email') }}</a> </p>
                            </div>
                        </div>
                        <div class="flex-center social">
                            <a href="{{ theme_option('facebook_link') }}" target="_blank" title="" class="fab fa-facebook-f"></a>
                            <a href="{{ theme_option('youtube_link') }}" target="_blank" title="" class="fab fa-youtube"></a>
                            <a href="{{ theme_option('mail_link') }}" target="_blank" title="" class="fas fa-envelope"></a>
                        </div>
                    </div>
                    <div class="col-md-3 pdl-60 markup-menu">
                        <h2 class="font-20 font-weight-bold mgb-20 text-uppercase">{{ __("business_category") }}</h2>
                        {!!
                            Menu::renderMenuLocation('menu-footer-1', [
                                'options' => [
                                    'class' => 'ft_nav',
                                ],
                                'theme'   => true,
                            ])
                        !!}
                    </div>
                    <div class="col-md-3">
                        <h2 class="font-20 font-weight-bold mgb-20 text-uppercase">{{ __("category") }}</h2>
                        {!!
                            Menu::renderMenuLocation('menu-footer-2', [
                                'options' => [
                                    'class' => 'ft_nav',
                                ],
                                'theme'   => true,
                            ])
                        !!}
                    </div>
                    <div class="col-md-3">
                        <div class="ft_end">
                            <h4 class="font-600 mgb-10 text_red text-capitalize text-right">{{ theme_option('title_footer_1') }}</h4>
                            <h4 class="mgb-60 text-right">{{ theme_option('title_footer_2') }}</h4>
                            @if (session()->has('success_msg'))
                                <div class="alert alert-success" style="margin-top: 10px" role="alert">
                                    {{ session('success_msg') }}
                                </div>
                            @endif
                            <form class="frm_new relative" action="{{ route('public.newsletter.subscribe') }}" method="POST">
                                @csrf
                                <img src="{{ new_theme_assets('images/svg-mail.svg') }}" alt="">
                                <input type="email" required name="email" placeholder="Email">
                                <button type="submit">{{ __("register_now") }}</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="ft_bot">
                    <span class="text_red">© Phuthaiholdingsgroup{{ "@".now()->year }}</span>
                </div>
            </div>
        </footer>

        {!! Theme::footer() !!}
        <script>
            $(function (){
                $('#switch-lang').on('change', function (){
                    window.location.href = $(this).val();
                })
            })
        </script>
    </body>
</html>
