<div style="width: 100%; position: relative;">
    <iframe id="external-frame" src="<!-- IF isDevelop -->http://127.0.0.1:4200<!-- ELSE -->/hypeeyes/web<!-- ENDIF isDevelop -->"
            style="width: 100%;<!-- IF isDevelop -->height: calc(100vh - 165px);<!-- ENDIF isDevelop -->"></iframe>
</div>
<script type="text/javascript">
    function setIframeHeight(iframe) {
        if (iframe) {
            var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
            if (iframeWin.document.body) {
                iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
            }
        }
    }

    window.onload = function () {

        setIframeHeight(document.getElementById('external-frame'));
    };
</script>
<style>
@media (min-width: 1200px) {
  .container {
    width: 100%;
  }
}
body #content {
    padding: 0;
}
body {
    overflow: hidden;
}
</style>
