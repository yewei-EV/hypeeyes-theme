<div component="post" class="<!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
	<a component="post/anchor" data-index="{posts.index}"></a>
	<meta itemprop="datePublished" content="{posts.relativeTime}">
	<meta itemprop="dateModified" content="{posts.relativeEditTime}">

	<div class="post-block">

		<div class="post-content">
			<div class="post-body">
				<ul class="post-actions pull-right">
					<li class="votes">
						<!-- IF !reputation:disabled -->
						<a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
							<i class="fa fa-thumbs-o-up"></i>
						</a>
						<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
						<!-- IF !downvote:disabled -->
						<a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
							<i class="fa fa-thumbs-o-down"></i>
						</a>
						<!-- ENDIF !downvote:disabled -->
						<!-- ENDIF !reputation:disabled -->
					</li>
					<!-- IMPORT partials/topic/post-menu.tpl -->
				</ul>

				<div class="topic-title" component="topic/title">{title}</div>

				<div class="post-header" style="display: flex">
					<div style="margin-right: 10px">
						<a href="{config.relative_path}/user/{posts.user.userslug}">
							<!-- IF posts.user.picture -->
							<img class="user-picture" style="width: 35px; height: 35px; padding: 0" src="{posts.user.picture}" alt="{posts.user.username}" title="{posts.user.username}"/>
							<!-- ELSE -->
							<div class="user-icon" style="background-color: {posts.user.icon:bgColor}; ">{posts.user.icon:text}</div>
							<!-- ENDIF posts.user.picture -->
						</a>
					</div>
					<!--					<div>-->
						<strong style="line-height: 28px; font-size: 18px;">
							<a style="color: #3f3f3f" href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
							<!-- IMPORT partials/topic/badge.tpl -->
						</strong>

					<div class="post-header-space" style="flex: 1 auto;"></div>

						<span class="post-time text-right" style="line-height: 28px; font-size: 14px">
							<a class="permalink" href="{config.relative_path}/post/{posts.pid}">发布于<span class="timeago" title="{posts.timestampISO}"></span></a>

							<span class="post-tools">
								<a component="post/reply" href="#" class="<!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->"><i class="fa fa-reply"></i>[[topic:reply]]</a>
								<a component="post/quote" href="#" class="<!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->"><i class="fa fa-quote-left"></i>[[topic:quote]]</a>
							</span>
						</span>
<!--					</div>-->
				</div>

				<div class="post-body-item" component="post/content" itemprop="text">
					{posts.content}
				</div>

				<!-- IF posts.user.signature -->
				<div component="post/signature" data-uid="{posts.user.uid}" class="post-signature hidden-xs">{posts.user.signature}</div>
				<!-- ENDIF posts.user.signature -->

				<div class="post-inline" style="display: flex;">
					<div class="upvote-buttom">
						<a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
							<i class="fa fa-thumbs-o-up"></i>
						</a>
						<div class="vote-buttom" style="display: inline ">
							<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
							{posts.reactions}
						</div>
					</div>
					<div class="post-space" style="flex: 1 auto;"></div>
					<div class="post-share">
						<div class="fs-13 text-white" href="/aboutus" target="_blank" style="display: inline; margin-right: 12px">分享给朋友</div>
						<a rel="nofollow" href="https://mp.weixin.qq.com/s/FYOiA6S19dgA-DlQCa9AkQ" target="_blank" style="display:inline-block;margin-right:8px;">
						<span class="weixin-icon">
							<img style="width: 18px;height: 18px; color: rgb(102, 102, 102);" src="https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/371_Wechat_logo-512.png">
						</span>
						</a>
						<a rel="nofollow" href="https://www.weibo.com/u/6813829027?is_all=1" target="_blank" style="display:inline-block;margin-right:8px;">
							<span class="nowre-third-icon small">
								<img style="width: 18px;height: 18px; color: rgb(102, 102, 102);" src="https://cdn4.iconfinder.com/data/icons/chinas-social-share-icons/256/cssi_sina_weibo-512.png">
							</span>

						</a>
						<a rel="nofollow" href="https://www.instagram.com/hypeeyes_official/" target="_blank" style="display:inline-block;margin-right:8px;">
						  <span class="nowre-third-icon small">
							<img style="width: 18px;height: 18px; color: rgb(102, 102, 102);" src="http://www.transparentpng.com/thumb/instagram-logo-icon/85T6Z9-instagram-logo-clipart-transparent.png">
						  </span>
						</a>
						<a role="menuitem" component="share/facebook" tabindex="-1" href="#" style="display:inline-block;margin-right:8px;">
							<span class="small">
								<img style="width: 18px;height: 18px; color: rgb(102, 102, 102);" src="http://assets.stickpng.com/thumbs/584ac2d03ac3a570f94a666d.png">
						  	</span>
						</a>
						<a role="menuitem" component="share/twitter" tabindex="-1" href="#" style="display:inline-block;margin-right:8px;">
				  			<span class="small">
								<img style="width: 18px;height: 18px; color: rgb(102, 102, 102);" src="http://pngimg.com/uploads/twitter/twitter_PNG9.png">
						  	</span>
						</a>
					</div>
				</div>
				<div class="post-edit">
					<small component="post/editor" class="<!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->"><strong><a href="{config.relative_path}/user/{posts.editor.userslug}">[[global:last_edited_by, {posts.editor.username}]]</a></strong> <span class="timeago" title="{posts.editedISO}"></span></small>
				</div>
			</div>
		</div>
	</div>
</div>
