<div style="width: 100%; position: relative;">
    <iframe style="width: 4000px; position: absolute; left: 50%; transform: translateX(-50%);" frameBorder="0" src="http://127.0.0.1:4200" id="id="external-frame"></iframe>
</div>
<script type="text/javascript">
function setIframeHeight(iframe) {
    if (iframe) {
        var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
        if (iframeWin.document.body) {
            iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
        }
    }
};

window.onload = function () {
    setIframeHeight(document.getElementById('external-frame'));
};
</script>
