import toastr from 'toastr';
import 'toastr/build/toastr.min.css'

toastr.options = {
  "closeButton": true,
  "debug": false,
  "newestOnTop": false,
  "progressBar": false,
  "positionClass": "toast-top-center",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}

const notify = () => {
  if(document.querySelector('.success-notice')) {
    toastr.success("Je vous répondrai dès que possible.","Message envoyé !");
  }
};

export default notify()
