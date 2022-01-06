<script type="text/javascript">

    $(function () {

        let attachPdf = 0;

        $('#modal-mail-purchaseorder').modal({backdrop: 'static'}).on('shown.bs.modal', function () {
            $('#to').chosen();
            $('#cc').chosen();
            $('#bcc').chosen();
        });

        $('#btn-submit-mail-purchaseorder').click(function () {

            const $btn = $(this).button('loading');

            if ($('#attach_pdf').prop('checked') == true) {
                attachPdf = 1;
            }

            $.post('{{ route('purchaseorderMail.store') }}', {
                purchaseorder_id: {{ $purchaseorderId }},
                to: $('#to').val(),
                cc: $('#cc').val(),
                bcc: $('#bcc').val(),
                subject: $('#subject').val(),
                body: $('#body').val(),
                attach_pdf: attachPdf
            }).done(function (response) {
                $('#modal-status-placeholder').html('<div class="alert alert-success">' + '@lang('bt.sent')' + '</div>');
                setTimeout("window.location='" + decodeURIComponent('{{ $redirectTo }}') + "'", 1000);
            }).fail(function (response) {
                $btn.button('reset');
                showErrors($.parseJSON(response.responseText).errors, '#modal-status-placeholder');
            });
        });

    });

</script>
