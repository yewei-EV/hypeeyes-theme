		</div><!-- /.container#content -->

		<footer class="footer">
			<div class="home-separator"></div>
			<div class="footer-top text-center">
				<a class="fs-13 text-white" style="margin-right:15px;position:relative;" href="/aboutus" target="_blank">关于我们</a>
				<!-- <a class="fs-13 text-white"
				style="margin-right:15px;position:relative;top:-2px;" href="http://nowre.com/Contact"  target="_blank">联系我们</a> -->
				<a rel="nofollow" href="https://mp.weixin.qq.com/s/FYOiA6S19dgA-DlQCa9AkQ" target="_blank" style="display:inline-block;margin-right:8px;">
					<span class="weixin-icon">
						<img style="width: 22px;height: 18px;" src="http://nowre.com/wp-content/themes/nowre/img/icon-b-1.png">
					</span>
				</a>
				<a rel="nofollow" href="https://www.weibo.com/u/6813829027?is_all=1" target="_blank" style="display:inline-block;margin-right:8px;">
						<span class="nowre-third-icon small">
							<img style="width: 22px;height: 18px;" src="http://nowre.com/wp-content/themes/nowre/img/icon-b-2.png">
						</span>

				</a>
				<a rel="nofollow" href="https://www.instagram.com/hypeeyes_official/" target="_blank" style="display:inline-block;margin-right:8px;">
					  <span class="nowre-third-icon small">
						<img style="width: 22px;height: 18px;" src="http://nowre.com/wp-content/themes/nowre/img/icon-b-4.png">
					  </span>
				</a>
			</div>
			<div class="footer-button text-center">
				© HYPEEYES.COM 2019 - powered by <a target="_blank" href="https://nodebb.org">NodeBB</a> &nbsp; | &nbsp;
				<a class="fs-13 text-white" style="position:relative;" href="http://www.miitbeian.gov.cn" target="_blank">
					沪ICP备1234567
				</a> &nbsp; | &nbsp;	广播电视节目制作经营许可证（泸）字第9999号
			</div>
		</footer>

		<!-- IF !isSpider -->
		<div class="topic-search hidden">
			<div class="btn-group">
				<button type="button" class="btn btn-default count"></button>
				<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
				<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
			</div>
		</div>

		<div component="toaster/tray" class="alert-window">
			<div id="reconnect-alert" class="alert alert-dismissable alert-warning clearfix hide" component="toaster/toast">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
			</div>
		</div>
		<!-- ENDIF !isSpider -->

		<script defer src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>

		<!-- BEGIN scripts -->
		<script defer type="text/javascript" src="{scripts.src}"></script>
		<!-- END scripts -->

		<script>
			window.addEventListener('load', function () {
				require(['forum/footer']);

				<!-- IF useCustomJS -->
				{{customJS}}
				<!-- ENDIF useCustomJS -->
			});
		</script>

		<div class="hide">
			<!-- IMPORT 500-embed.tpl -->
		</div>

		<div><i id="scroll" style="display: none;" class="fa fa-chevron-circle-up position-fix"></i></div>

		<style type="text/css">
			.home-separator {
				display: block;
				border-top: 2px solid #d3d3d3;
				margin-top: -15px;
				margin-bottom: 10px;
			}
			.position-fix {
				position: fixed;
				bottom: 20px;
				right: 20px;
				font-size: 40px;
				color: #2196f3;
			}
			.position-fix:hover {
				cursor: pointer;
			}
			.footer {
				padding: 20px 40px;
				font-size: 13px !important;
				.text-center {
					text-align: center;
				}
			}
			.footer-top {
				margin-top: 20px;
				position: relative;
				top: -7px;
			}
			.footer-button {
				margin-top: 10px;
				position: relative;
				top: -7px;
			}
		</style>

		</body>
</html>
