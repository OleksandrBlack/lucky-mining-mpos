<form action="{$smarty.server.SCRIPT_NAME}" method="post" role="form">
  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
  <input type="hidden" name="action" value="contactform">
  <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
  <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-envelope fa-fw"></i> <span class="conta1">Contact Us</span>
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-lg-6">
              <div class="form-group">
                <label for="senderName"><span class="conta2">Your Name</span></label>
                <input type="text" class="form-control" name="senderName" value="{$smarty.request.senderName|escape|default:""}" placeholder="<span class="conta3">Please type your name</span>" size="15" maxlength="100" required />
              </div>
              <div class="form-group">
                <label for="senderEmail"><span class="conta4">Your Email Address</span></label>
                <input type="text" class="form-control" name="senderEmail" value="{$smarty.request.senderEmail|escape|default:""}" placeholder="<span class="conta5">Please type your email</span>" size="50"  maxlength="100" required />
              </div>
              <div class="form-group">
                <label for="senderEmail"><span class="conta6">Your Subject</span></label>
                <input type="text" class="form-control" name="senderSubject" value="{$smarty.request.senderSubject|escape|default:""}" placeholder="<span class="conta7">Please type your subject</span>" size="15" maxlength="100" required />
              </div>
              <div class="col-lg-6">
                <center>{nocache}{$RECAPTCHA|default:"" nofilter}{/nocache}
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label for="message"><span class="conta8">Your Message</span></label>
                <textarea type="text" class="form-control" name="senderMessage" cols="80" rows="20" maxlength="10000" required>{$smarty.request.senderMessage|escape|default:""}</textarea>
              </div>
            </div>
          </div>
        </div>
        <div class="panel-footer">
          <button type="submit" class="btn btn-success btn-sm"><span class="conta9">Send Email</span></button>
          <button type="reset" class="btn btn-warning btn-sm"><span class="contb1">Reset Values</span></button></center>
        </div>
      </div>
    </div>
  </div>
</form>
