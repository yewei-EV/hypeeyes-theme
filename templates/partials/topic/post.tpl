<div component="post" class="<!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
	<a component="post/anchor" data-index="{posts.index}"></a>
	<meta itemprop="datePublished" content="{posts.relativeTime}">
	<meta itemprop="dateModified" content="{posts.relativeEditTime}">

	<div class="post-block">
		<div class="poster-avatar hidden-xs">
			<a href="{config.relative_path}/user/{posts.user.userslug}">
				<!-- IF posts.user.picture -->
				<img class="user-picture" src="{posts.user.picture}" alt="{posts.user.username}" title="{posts.user.username}"/>
				<!-- ELSE -->
				<div class="user-icon" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
				<!-- ENDIF posts.user.picture -->
				<span component="user/status" class="status {posts.user.status}" title="[[global:{posts.user.status}]]"></span>
			</a>
		</div>

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

				<div class="post-header">
					<a class="pull-left visible-xs user-profile-link" href="{config.relative_path}/user/{posts.user.userslug}">
						<!-- IF posts.user.picture -->
						<img class="post-user-picture" src="{posts.user.picture}" alt="{posts.user.username}" title="{posts.user.username}"/>
						<!-- ELSE -->
						<div class="user-icon post-user-picture" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
						<!-- ENDIF posts.user.picture -->
					</a>

					<strong>
						<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
					</strong>
					<!-- IMPORT partials/topic/badge.tpl -->
					<span class="post-time">
						<a class="permalink" href="{config.relative_path}/post/{posts.pid}"><span class="timeago" title="{posts.timestampISO}"></span></a>

						<span class="post-tools">
							<a component="post/reply" href="#" class="<!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->"><i class="fa fa-reply"></i>[[topic:reply]]</a>
							<a component="post/quote" href="#" class="<!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->"><i class="fa fa-quote-left"></i>[[topic:quote]]</a>
						</span>
					</span>
				</div>

				<div class="post-body-item" component="post/content" itemprop="text">
					{posts.content}
				</div>

				<!-- IF posts.user.signature -->
				<div component="post/signature" data-uid="{posts.user.uid}" class="post-signature hidden-xs">{posts.user.signature}</div>
				<!-- ENDIF posts.user.signature -->

				<div class="post-edit">
					<small component="post/editor" class="<!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->"><strong><a href="{config.relative_path}/user/{posts.editor.userslug}">[[global:last_edited_by, {posts.editor.username}]]</a></strong> <span class="timeago" title="{posts.editedISO}"></span></small>
				</div>
				<div class="upvote-buttom">
				<a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
                							<i class="fa fa-thumbs-o-up"></i>
                </a>
                <span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
				{posts.reactions}
				<!-- IF config.loggedIn -->
                <li>
                	<a component="post/bookmark" href="#" data-bookmarked="{posts.bookmarked}">[[topic:bookmark]]
                		<span component="post/bookmark-count" class="bookmarkCount" data-bookmarks="{posts.bookmarks}">{posts.bookmarks}</span>&nbsp;
                		<i component="post/bookmark/on" class="fa fa-fw fa-heart <!-- IF !posts.bookmarked -->hidden<!-- ENDIF !posts.bookmarked -->"></i>
                		<i component="post/bookmark/off" class="fa fa-fw fa-heart-o <!-- IF posts.bookmarked -->hidden<!-- ENDIF posts.bookmarked -->"></i>
                	</a>
                </li>
                <!-- ENDIF config.loggedIn -->
				</div>
			</div>
		</div>
	</div>
</div>
