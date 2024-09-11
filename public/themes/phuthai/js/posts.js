$(function (){
    $('.load-more-posts').on('click', function (){
        let $this = $(this);
        $('img', $this).addClass('rotate');
        $('span', $this).addClass('d-none');
        let $action = $this.data('action');
        let $page = $this.data('page');
        let $category = $this.data('category');

        $.ajax({
            type: "GET",
            url: $action,
            data: {
                page : $page,
                category : $category,
            },
            success: function(res){
                if(res.status){
                    $('#append_posts').append(res.data);
                    if(res.has_more_page){
                        $this.data('page', res.next_page);
                        $('img', $this).removeClass('rotate');
                        $('span', $this).removeClass('d-none');
                    }else{
                        $this.addClass('d-none');
                    }
                }
            }
        });
    });
});
