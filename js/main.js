$(document).ready(function () {
    $(window).on('load', function(event) {
        $('body').removeClass('modal-open');
        $('#loader').fadeOut('fast');
     });
    $(document).on('click','#none', function (e) {
        var mod = 'nextpost';
        var pt = $(this).data('point')
       
        $.ajax({
            type: "post",
            url: "action.php",
            data: {spoint:pt,mod:mod},
            dataType: "html",
            success: function (response) {
                $('.listpost:last').after(response);
            }
        });
        $(this).remove();
    });
    $(document).on('click','.rpost', function (e) {
        var mod = 'readpost';
        var pt = $(this).data('id')
        $('body').addClass('modal-open');
        $.ajax({
            type: "post",
            url: "action.php",
            data: {id:pt,mod:mod},
            dataType: "html",
            success: function (response) {
                $('#modal-loc').html(response);
            }
        });
    });
    $(document).on('click','.bycat', function (e) {
        var mod = 'readpostbycat';
        var pt = $(this).data('point')
        var id = $(this).data('id')
        $.ajax({
            type: "post",
            url: "action.php",
            data: {id:id,mod:mod,spoint:pt},
            dataType: "html",
            success: function (response) {
                $('.list-post').html(response);
            }
        });
    });
    $(document).on('click','#catid', function (e) {
        var mod = 'readpostbycat';
        var pt = $(this).data('point')
        var id = $(this).data('id')
        $.ajax({
            type: "post",
            url: "action.php",
            data: {id:id,mod:mod,spoint:pt},
            dataType: "html",
            success: function (response) {
                $('.listpost:last').after(response);
            }
        });
        $(this).remove();
    });
    $(document).on('click','.like-icon', function (e) {
        var mod = 'like';
        var id = $(this).data('id')
        var elm = $(this);
        if ($(this).hasClass('text-primary')) {
            return false;
        } else {
            $.ajax({
                type: "post",
                url: "action.php",
                data: {id:id,mod:mod},
                dataType: "html",
                success: function (response) {
                    elm.next().remove();
                   elm.after(response);
                   elm.addClass('text-primary')
                }
            });
        } 
    });
    $(document).on('click','#close', function (e) {
        $('#modal1').remove();
        $('body').removeClass('modal-open');
        
    });
});