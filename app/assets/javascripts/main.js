( function( $ ) {
    $( document ).ready( function() {

        $('#user_user-select').selectize({
            create: true,
            sortField: 'text'
        });

        alert(1);

        $("a").click(function() {
            alert(2);
            return false;
        });


        $("body").on('click', 'a', function() {
            console.log(1111111111);
            return false;
        });

    });

})(jQuery);





