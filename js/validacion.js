
// validacion del nick de usuario
$('#nick').change(function() 
            {
                $.post('ajax_validacion_nick.php', 
                {
                    nick:$('#nick').val(),
                    beforeSend: function()
                                {
                                    $('.validacion').html("Espere un momento por fabor ...");
                                }
                }, 
                function(respuesta) 
                {
                    $('.validacion').html(respuesta);
                });
            });

// validacion del nick de usuario
$('#producto').change(function() 
                {
                    $.post('ajax_validacion_producto.php', 
                    {
                        producto:$('#producto').val(),
                        beforeSend: function()
                                    {
                                        $('.validacion').html("Espere un momento por favor ...");
                                    }
                    }, 
                    function(respuesta) 
                    {
                        $('.validacion').html(respuesta);
                    });
                });
