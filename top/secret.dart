import 'dart:convert';

Secret secretFromJson(String str) => Secret.fromJson(json.decode(str));

String secretToJson(Secret data) => json.encode(data.toJson());

class Secret {
    Secret({
        this.numResults,
        this.moreAvailable,
        this.autoLoadMoreEnabled,
        this.isDirectV2Enabled,
        this.nextMaxId,
        this.viewStateVersion,
        this.clientFeedChangelistApplied,
        this.requestId,
        this.pullToRefreshWindowMs,
        this.preloadDistance,
        this.status,
        this.feedPillText,
        this.hideLikeAndViewCounts,
        this.feedItems,
    });

    int numResults;
    bool moreAvailable;
    bool autoLoadMoreEnabled;
    bool isDirectV2Enabled;
    String nextMaxId;
    String viewStateVersion;
    bool clientFeedChangelistApplied;
    String requestId;
    int pullToRefreshWindowMs;
    int preloadDistance;
    String status;
    String feedPillText;
    int hideLikeAndViewCounts;
    List<FeedItem> feedItems;

    factory Secret.fromJson(Map<String, dynamic> json) => Secret(
        numResults: json["num_results"],
        moreAvailable: json["more_available"],
        autoLoadMoreEnabled: json["auto_load_more_enabled"],
        isDirectV2Enabled: json["is_direct_v2_enabled"],
        nextMaxId: json["next_max_id"],
        viewStateVersion: json["view_state_version"],
        clientFeedChangelistApplied: json["client_feed_changelist_applied"],
        requestId: json["request_id"],
        pullToRefreshWindowMs: json["pull_to_refresh_window_ms"],
        preloadDistance: json["preload_distance"],
        status: json["status"],
        feedPillText: json["feed_pill_text"],
        hideLikeAndViewCounts: json["hide_like_and_view_counts"],
        feedItems: List<FeedItem>.from(json["feed_items"].map((x) => FeedItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "num_results": numResults,
        "more_available": moreAvailable,
        "auto_load_more_enabled": autoLoadMoreEnabled,
        "is_direct_v2_enabled": isDirectV2Enabled,
        "next_max_id": nextMaxId,
        "view_state_version": viewStateVersion,
        "client_feed_changelist_applied": clientFeedChangelistApplied,
        "request_id": requestId,
        "pull_to_refresh_window_ms": pullToRefreshWindowMs,
        "preload_distance": preloadDistance,
        "status": status,
        "feed_pill_text": feedPillText,
        "hide_like_and_view_counts": hideLikeAndViewCounts,
        "feed_items": List<dynamic>.from(feedItems.map((x) => x.toJson())),
    };
}

class FeedItem {
    FeedItem({
        this.mediaOrAd,
    });

    MediaOrAd mediaOrAd;

    factory FeedItem.fromJson(Map<String, dynamic> json) => FeedItem(
        mediaOrAd: MediaOrAd.fromJson(json["media_or_ad"]),
    );

    Map<String, dynamic> toJson() => {
        "media_or_ad": mediaOrAd.toJson(),
    };
}

class MediaOrAd {
    MediaOrAd({
        this.takenAt,
        this.pk,
        this.id,
        this.deviceTimestamp,
        this.mediaType,
        this.code,
        this.clientCacheKey,
        this.filterType,
        this.accessibilityCaption,
        this.isUnifiedVideo,
        this.shouldRequestAds,
        this.user,
        this.canViewerReshare,
        this.captionIsEdited,
        this.likeAndViewCountsDisabled,
        this.commercialityStatus,
        this.isPaidPartnership,
        this.playlistEligibility,
        this.originalMediaHasVisualReplyMedia,
        this.commentLikesEnabled,
        this.commentThreadingEnabled,
        this.hasMoreComments,
        this.maxNumVisiblePreviewComments,
        this.previewComments,
        this.comments,
        this.canViewMorePreviewComments,
        this.commentCount,
        this.hideViewAllCommentEntrypoint,
        this.inlineComposerDisplayCondition,
        this.imageVersions2,
        this.originalWidth,
        this.originalHeight,
        this.likeCount,
        this.hasLiked,
        this.topLikers,
        this.facepileTopLikers,
        this.photoOfYou,
        this.usertags,
        this.isOrganicProductTaggingEligible,
        this.canSeeInsightsAsBrand,
        this.caption,
        this.coauthorProducers,
        this.coauthorProducerCanSeeOrganicInsights,
        this.canViewerSave,
        this.organicTrackingToken,
        this.preview,
        this.sharingFrictionInfo,
        this.productType,
        this.isInProfileGrid,
        this.profileGridControlEnabled,
        this.deletedReason,
        this.integrityReviewDecision,
        this.musicMetadata,
        this.inventorySource,
        this.isSeen,
        this.isEof,
        this.carouselMediaCount,
        this.carouselMedia,
        this.isDashEligible,
        this.videoDashManifest,
        this.videoCodec,
        this.numberOfQualities,
        this.videoVersions,
        this.hasAudio,
        this.videoDuration,
        this.viewCount,
        this.playCount,
        this.clipsMetadata,
        this.mediaCroppingInfo,
        this.nextMaxId,
        this.fbLikeCount,
        this.fbPlayCount,
    });

    int takenAt;
    String pk;
    String id;
    int deviceTimestamp;
    int mediaType;
    String code;
    String clientCacheKey;
    int filterType;
    String accessibilityCaption;
    bool isUnifiedVideo;
    bool shouldRequestAds;
    User user;
    bool canViewerReshare;
    bool captionIsEdited;
    bool likeAndViewCountsDisabled;
    CommercialityStatus commercialityStatus;
    bool isPaidPartnership;
    bool playlistEligibility;
    bool originalMediaHasVisualReplyMedia;
    bool commentLikesEnabled;
    bool commentThreadingEnabled;
    bool hasMoreComments;
    int maxNumVisiblePreviewComments;
    List<Comment> previewComments;
    List<Comment> comments;
    bool canViewMorePreviewComments;
    int commentCount;
    bool hideViewAllCommentEntrypoint;
    InlineComposerDisplayCondition inlineComposerDisplayCondition;
    MediaOrAdImageVersions2 imageVersions2;
    int originalWidth;
    int originalHeight;
    int likeCount;
    bool hasLiked;
    List<String> topLikers;
    List<FacepileTopLiker> facepileTopLikers;
    bool photoOfYou;
    Usertags usertags;
    bool isOrganicProductTaggingEligible;
    bool canSeeInsightsAsBrand;
    Caption caption;
    List<FacepileTopLiker> coauthorProducers;
    dynamic coauthorProducerCanSeeOrganicInsights;
    bool canViewerSave;
    String organicTrackingToken;
    String preview;
    SharingFrictionInfo sharingFrictionInfo;
    ProductType productType;
    bool isInProfileGrid;
    bool profileGridControlEnabled;
    int deletedReason;
    IntegrityReviewDecision integrityReviewDecision;
    MusicMetadata musicMetadata;
    InventorySource inventorySource;
    bool isSeen;
    bool isEof;
    int carouselMediaCount;
    List<CarouselMedia> carouselMedia;
    int isDashEligible;
    String videoDashManifest;
    String videoCodec;
    int numberOfQualities;
    List<VideoVersion> videoVersions;
    bool hasAudio;
    double videoDuration;
    int viewCount;
    int playCount;
    ClipsMetadata clipsMetadata;
    MediaCroppingInfo mediaCroppingInfo;
    String nextMaxId;
    int fbLikeCount;
    int fbPlayCount;

    factory MediaOrAd.fromJson(Map<String, dynamic> json) => MediaOrAd(
        takenAt: json["taken_at"],
        pk: json["pk"],
        id: json["id"],
        deviceTimestamp: json["device_timestamp"],
        mediaType: json["media_type"],
        code: json["code"],
        clientCacheKey: json["client_cache_key"],
        filterType: json["filter_type"],
        accessibilityCaption: json["accessibility_caption"] == null ? null : json["accessibility_caption"],
        isUnifiedVideo: json["is_unified_video"],
        shouldRequestAds: json["should_request_ads"],
        user: User.fromJson(json["user"]),
        canViewerReshare: json["can_viewer_reshare"],
        captionIsEdited: json["caption_is_edited"],
        likeAndViewCountsDisabled: json["like_and_view_counts_disabled"],
        commercialityStatus: commercialityStatusValues.map[json["commerciality_status"]],
        isPaidPartnership: json["is_paid_partnership"],
        playlistEligibility: json["playlist_eligibility"],
        originalMediaHasVisualReplyMedia: json["original_media_has_visual_reply_media"],
        commentLikesEnabled: json["comment_likes_enabled"],
        commentThreadingEnabled: json["comment_threading_enabled"],
        hasMoreComments: json["has_more_comments"],
        maxNumVisiblePreviewComments: json["max_num_visible_preview_comments"],
        previewComments: List<Comment>.from(json["preview_comments"].map((x) => Comment.fromJson(x))),
        comments: List<Comment>.from(json["comments"].map((x) => Comment.fromJson(x))),
        canViewMorePreviewComments: json["can_view_more_preview_comments"],
        commentCount: json["comment_count"],
        hideViewAllCommentEntrypoint: json["hide_view_all_comment_entrypoint"],
        inlineComposerDisplayCondition: inlineComposerDisplayConditionValues.map[json["inline_composer_display_condition"]],
        imageVersions2: json["image_versions2"] == null ? null : MediaOrAdImageVersions2.fromJson(json["image_versions2"]),
        originalWidth: json["original_width"] == null ? null : json["original_width"],
        originalHeight: json["original_height"] == null ? null : json["original_height"],
        likeCount: json["like_count"],
        hasLiked: json["has_liked"],
        topLikers: List<String>.from(json["top_likers"].map((x) => x)),
        facepileTopLikers: List<FacepileTopLiker>.from(json["facepile_top_likers"].map((x) => FacepileTopLiker.fromJson(x))),
        photoOfYou: json["photo_of_you"],
        usertags: json["usertags"] == null ? null : Usertags.fromJson(json["usertags"]),
        isOrganicProductTaggingEligible: json["is_organic_product_tagging_eligible"] == null ? null : json["is_organic_product_tagging_eligible"],
        canSeeInsightsAsBrand: json["can_see_insights_as_brand"],
        caption: json["caption"] == null ? null : Caption.fromJson(json["caption"]),
        coauthorProducers: json["coauthor_producers"] == null ? null : List<FacepileTopLiker>.from(json["coauthor_producers"].map((x) => FacepileTopLiker.fromJson(x))),
        coauthorProducerCanSeeOrganicInsights: json["coauthor_producer_can_see_organic_insights"],
        canViewerSave: json["can_viewer_save"],
        organicTrackingToken: json["organic_tracking_token"],
        preview: json["preview"] == null ? null : json["preview"],
        sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        productType: productTypeValues.map[json["product_type"]],
        isInProfileGrid: json["is_in_profile_grid"],
        profileGridControlEnabled: json["profile_grid_control_enabled"],
        deletedReason: json["deleted_reason"],
        integrityReviewDecision: integrityReviewDecisionValues.map[json["integrity_review_decision"]],
        musicMetadata: json["music_metadata"] == null ? null : MusicMetadata.fromJson(json["music_metadata"]),
        inventorySource: inventorySourceValues.map[json["inventory_source"]],
        isSeen: json["is_seen"],
        isEof: json["is_eof"],
        carouselMediaCount: json["carousel_media_count"] == null ? null : json["carousel_media_count"],
        carouselMedia: json["carousel_media"] == null ? null : List<CarouselMedia>.from(json["carousel_media"].map((x) => CarouselMedia.fromJson(x))),
        isDashEligible: json["is_dash_eligible"] == null ? null : json["is_dash_eligible"],
        videoDashManifest: json["video_dash_manifest"] == null ? null : json["video_dash_manifest"],
        videoCodec: json["video_codec"] == null ? null : json["video_codec"],
        numberOfQualities: json["number_of_qualities"] == null ? null : json["number_of_qualities"],
        videoVersions: json["video_versions"] == null ? null : List<VideoVersion>.from(json["video_versions"].map((x) => VideoVersion.fromJson(x))),
        hasAudio: json["has_audio"] == null ? null : json["has_audio"],
        videoDuration: json["video_duration"] == null ? null : json["video_duration"].toDouble(),
        viewCount: json["view_count"] == null ? null : json["view_count"],
        playCount: json["play_count"] == null ? null : json["play_count"],
        clipsMetadata: json["clips_metadata"] == null ? null : ClipsMetadata.fromJson(json["clips_metadata"]),
        mediaCroppingInfo: json["media_cropping_info"] == null ? null : MediaCroppingInfo.fromJson(json["media_cropping_info"]),
        nextMaxId: json["next_max_id"] == null ? null : json["next_max_id"],
        fbLikeCount: json["fb_like_count"] == null ? null : json["fb_like_count"],
        fbPlayCount: json["fb_play_count"] == null ? null : json["fb_play_count"],
    );

    Map<String, dynamic> toJson() => {
        "taken_at": takenAt,
        "pk": pk,
        "id": id,
        "device_timestamp": deviceTimestamp,
        "media_type": mediaType,
        "code": code,
        "client_cache_key": clientCacheKey,
        "filter_type": filterType,
        "accessibility_caption": accessibilityCaption == null ? null : accessibilityCaption,
        "is_unified_video": isUnifiedVideo,
        "should_request_ads": shouldRequestAds,
        "user": user.toJson(),
        "can_viewer_reshare": canViewerReshare,
        "caption_is_edited": captionIsEdited,
        "like_and_view_counts_disabled": likeAndViewCountsDisabled,
        "commerciality_status": commercialityStatusValues.reverse[commercialityStatus],
        "is_paid_partnership": isPaidPartnership,
        "playlist_eligibility": playlistEligibility,
        "original_media_has_visual_reply_media": originalMediaHasVisualReplyMedia,
        "comment_likes_enabled": commentLikesEnabled,
        "comment_threading_enabled": commentThreadingEnabled,
        "has_more_comments": hasMoreComments,
        "max_num_visible_preview_comments": maxNumVisiblePreviewComments,
        "preview_comments": List<dynamic>.from(previewComments.map((x) => x.toJson())),
        "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
        "can_view_more_preview_comments": canViewMorePreviewComments,
        "comment_count": commentCount,
        "hide_view_all_comment_entrypoint": hideViewAllCommentEntrypoint,
        "inline_composer_display_condition": inlineComposerDisplayConditionValues.reverse[inlineComposerDisplayCondition],
        "image_versions2": imageVersions2 == null ? null : imageVersions2.toJson(),
        "original_width": originalWidth == null ? null : originalWidth,
        "original_height": originalHeight == null ? null : originalHeight,
        "like_count": likeCount,
        "has_liked": hasLiked,
        "top_likers": List<dynamic>.from(topLikers.map((x) => x)),
        "facepile_top_likers": List<dynamic>.from(facepileTopLikers.map((x) => x.toJson())),
        "photo_of_you": photoOfYou,
        "usertags": usertags == null ? null : usertags.toJson(),
        "is_organic_product_tagging_eligible": isOrganicProductTaggingEligible == null ? null : isOrganicProductTaggingEligible,
        "can_see_insights_as_brand": canSeeInsightsAsBrand,
        "caption": caption == null ? null : caption.toJson(),
        "coauthor_producers": coauthorProducers == null ? null : List<dynamic>.from(coauthorProducers.map((x) => x.toJson())),
        "coauthor_producer_can_see_organic_insights": coauthorProducerCanSeeOrganicInsights,
        "can_viewer_save": canViewerSave,
        "organic_tracking_token": organicTrackingToken,
        "preview": preview == null ? null : preview,
        "sharing_friction_info": sharingFrictionInfo.toJson(),
        "product_type": productTypeValues.reverse[productType],
        "is_in_profile_grid": isInProfileGrid,
        "profile_grid_control_enabled": profileGridControlEnabled,
        "deleted_reason": deletedReason,
        "integrity_review_decision": integrityReviewDecisionValues.reverse[integrityReviewDecision],
        "music_metadata": musicMetadata == null ? null : musicMetadata.toJson(),
        "inventory_source": inventorySourceValues.reverse[inventorySource],
        "is_seen": isSeen,
        "is_eof": isEof,
        "carousel_media_count": carouselMediaCount == null ? null : carouselMediaCount,
        "carousel_media": carouselMedia == null ? null : List<dynamic>.from(carouselMedia.map((x) => x.toJson())),
        "is_dash_eligible": isDashEligible == null ? null : isDashEligible,
        "video_dash_manifest": videoDashManifest == null ? null : videoDashManifest,
        "video_codec": videoCodec == null ? null : videoCodec,
        "number_of_qualities": numberOfQualities == null ? null : numberOfQualities,
        "video_versions": videoVersions == null ? null : List<dynamic>.from(videoVersions.map((x) => x.toJson())),
        "has_audio": hasAudio == null ? null : hasAudio,
        "video_duration": videoDuration == null ? null : videoDuration,
        "view_count": viewCount == null ? null : viewCount,
        "play_count": playCount == null ? null : playCount,
        "clips_metadata": clipsMetadata == null ? null : clipsMetadata.toJson(),
        "media_cropping_info": mediaCroppingInfo == null ? null : mediaCroppingInfo.toJson(),
        "next_max_id": nextMaxId == null ? null : nextMaxId,
        "fb_like_count": fbLikeCount == null ? null : fbLikeCount,
        "fb_play_count": fbPlayCount == null ? null : fbPlayCount,
    };
}

class Caption {
    Caption({
        this.pk,
        this.userId,
        this.text,
        this.type,
        this.createdAt,
        this.createdAtUtc,
        this.contentType,
        this.status,
        this.bitFlags,
        this.didReportAsSpam,
        this.shareEnabled,
        this.user,
        this.isCovered,
        this.mediaId,
        this.privateReplyStatus,
    });

    String pk;
    int userId;
    String text;
    int type;
    int createdAt;
    int createdAtUtc;
    ContentType contentType;
    Status status;
    int bitFlags;
    bool didReportAsSpam;
    bool shareEnabled;
    User user;
    bool isCovered;
    String mediaId;
    int privateReplyStatus;

    factory Caption.fromJson(Map<String, dynamic> json) => Caption(
        pk: json["pk"],
        userId: json["user_id"],
        text: json["text"],
        type: json["type"],
        createdAt: json["created_at"],
        createdAtUtc: json["created_at_utc"],
        contentType: contentTypeValues.map[json["content_type"]],
        status: statusValues.map[json["status"]],
        bitFlags: json["bit_flags"],
        didReportAsSpam: json["did_report_as_spam"],
        shareEnabled: json["share_enabled"],
        user: User.fromJson(json["user"]),
        isCovered: json["is_covered"],
        mediaId: json["media_id"],
        privateReplyStatus: json["private_reply_status"],
    );

    Map<String, dynamic> toJson() => {
        "pk": pk,
        "user_id": userId,
        "text": text,
        "type": type,
        "created_at": createdAt,
        "created_at_utc": createdAtUtc,
        "content_type": contentTypeValues.reverse[contentType],
        "status": statusValues.reverse[status],
        "bit_flags": bitFlags,
        "did_report_as_spam": didReportAsSpam,
        "share_enabled": shareEnabled,
        "user": user.toJson(),
        "is_covered": isCovered,
        "media_id": mediaId,
        "private_reply_status": privateReplyStatus,
    };
}

enum ContentType { COMMENT }

final contentTypeValues = EnumValues({
    "comment": ContentType.COMMENT
});

enum Status { ACTIVE }

final statusValues = EnumValues({
    "Active": Status.ACTIVE
});

class User {
    User({
        this.pk,
        this.username,
        this.fullName,
        this.isPrivate,
        this.profilePicUrl,
        this.profilePicId,
        this.friendshipStatus,
        this.isVerified,
        this.followFrictionType,
        this.hasAnonymousProfilePicture,
        this.isUnpublished,
        this.isFavorite,
        this.hasHighlightReels,
        this.accountBadges,
        this.liveBroadcastId,
        this.latestReelMedia,
    });

    int pk;
    String username;
    String fullName;
    bool isPrivate;
    String profilePicUrl;
    String profilePicId;
    PurpleFriendshipStatus friendshipStatus;
    bool isVerified;
    int followFrictionType;
    bool hasAnonymousProfilePicture;
    bool isUnpublished;
    bool isFavorite;
    bool hasHighlightReels;
    List<dynamic> accountBadges;
    dynamic liveBroadcastId;
    int latestReelMedia;

    factory User.fromJson(Map<String, dynamic> json) => User(
        pk: json["pk"],
        username: json["username"],
        fullName: json["full_name"],
        isPrivate: json["is_private"],
        profilePicUrl: json["profile_pic_url"],
        profilePicId: json["profile_pic_id"],
        friendshipStatus: PurpleFriendshipStatus.fromJson(json["friendship_status"]),
        isVerified: json["is_verified"],
        followFrictionType: json["follow_friction_type"],
        hasAnonymousProfilePicture: json["has_anonymous_profile_picture"],
        isUnpublished: json["is_unpublished"],
        isFavorite: json["is_favorite"],
        hasHighlightReels: json["has_highlight_reels"],
        accountBadges: List<dynamic>.from(json["account_badges"].map((x) => x)),
        liveBroadcastId: json["live_broadcast_id"],
        latestReelMedia: json["latest_reel_media"],
    );

    Map<String, dynamic> toJson() => {
        "pk": pk,
        "username": username,
        "full_name": fullName,
        "is_private": isPrivate,
        "profile_pic_url": profilePicUrl,
        "profile_pic_id": profilePicId,
        "friendship_status": friendshipStatus.toJson(),
        "is_verified": isVerified,
        "follow_friction_type": followFrictionType,
        "has_anonymous_profile_picture": hasAnonymousProfilePicture,
        "is_unpublished": isUnpublished,
        "is_favorite": isFavorite,
        "has_highlight_reels": hasHighlightReels,
        "account_badges": List<dynamic>.from(accountBadges.map((x) => x)),
        "live_broadcast_id": liveBroadcastId,
        "latest_reel_media": latestReelMedia,
    };
}

class PurpleFriendshipStatus {
    PurpleFriendshipStatus({
        this.following,
        this.outgoingRequest,
        this.isMutingReel,
        this.isBestie,
        this.isRestricted,
        this.isFeedFavorite,
    });

    bool following;
    bool outgoingRequest;
    bool isMutingReel;
    bool isBestie;
    bool isRestricted;
    bool isFeedFavorite;

    factory PurpleFriendshipStatus.fromJson(Map<String, dynamic> json) => PurpleFriendshipStatus(
        following: json["following"],
        outgoingRequest: json["outgoing_request"],
        isMutingReel: json["is_muting_reel"],
        isBestie: json["is_bestie"],
        isRestricted: json["is_restricted"],
        isFeedFavorite: json["is_feed_favorite"],
    );

    Map<String, dynamic> toJson() => {
        "following": following,
        "outgoing_request": outgoingRequest,
        "is_muting_reel": isMutingReel,
        "is_bestie": isBestie,
        "is_restricted": isRestricted,
        "is_feed_favorite": isFeedFavorite,
    };
}

class CarouselMedia {
    CarouselMedia({
        this.id,
        this.mediaType,
        this.imageVersions2,
        this.originalWidth,
        this.originalHeight,
        this.accessibilityCaption,
        this.pk,
        this.carouselParentId,
        this.canSeeInsightsAsBrand,
        this.usertags,
        this.commercialityStatus,
        this.sharingFrictionInfo,
        this.videoVersions,
        this.videoDuration,
        this.isDashEligible,
        this.videoDashManifest,
        this.videoCodec,
        this.numberOfQualities,
    });

    String id;
    int mediaType;
    CarouselMediaImageVersions2 imageVersions2;
    int originalWidth;
    int originalHeight;
    String accessibilityCaption;
    String pk;
    String carouselParentId;
    bool canSeeInsightsAsBrand;
    Usertags usertags;
    CommercialityStatus commercialityStatus;
    SharingFrictionInfo sharingFrictionInfo;
    List<VideoVersion> videoVersions;
    double videoDuration;
    int isDashEligible;
    String videoDashManifest;
    String videoCodec;
    int numberOfQualities;

    factory CarouselMedia.fromJson(Map<String, dynamic> json) => CarouselMedia(
        id: json["id"],
        mediaType: json["media_type"],
        imageVersions2: CarouselMediaImageVersions2.fromJson(json["image_versions2"]),
        originalWidth: json["original_width"],
        originalHeight: json["original_height"],
        accessibilityCaption: json["accessibility_caption"] == null ? null : json["accessibility_caption"],
        pk: json["pk"],
        carouselParentId: json["carousel_parent_id"],
        canSeeInsightsAsBrand: json["can_see_insights_as_brand"],
        usertags: json["usertags"] == null ? null : Usertags.fromJson(json["usertags"]),
        commercialityStatus: commercialityStatusValues.map[json["commerciality_status"]],
        sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        videoVersions: json["video_versions"] == null ? null : List<VideoVersion>.from(json["video_versions"].map((x) => VideoVersion.fromJson(x))),
        videoDuration: json["video_duration"] == null ? null : json["video_duration"].toDouble(),
        isDashEligible: json["is_dash_eligible"] == null ? null : json["is_dash_eligible"],
        videoDashManifest: json["video_dash_manifest"] == null ? null : json["video_dash_manifest"],
        videoCodec: json["video_codec"] == null ? null : json["video_codec"],
        numberOfQualities: json["number_of_qualities"] == null ? null : json["number_of_qualities"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "media_type": mediaType,
        "image_versions2": imageVersions2.toJson(),
        "original_width": originalWidth,
        "original_height": originalHeight,
        "accessibility_caption": accessibilityCaption == null ? null : accessibilityCaption,
        "pk": pk,
        "carousel_parent_id": carouselParentId,
        "can_see_insights_as_brand": canSeeInsightsAsBrand,
        "usertags": usertags == null ? null : usertags.toJson(),
        "commerciality_status": commercialityStatusValues.reverse[commercialityStatus],
        "sharing_friction_info": sharingFrictionInfo.toJson(),
        "video_versions": videoVersions == null ? null : List<dynamic>.from(videoVersions.map((x) => x.toJson())),
        "video_duration": videoDuration == null ? null : videoDuration,
        "is_dash_eligible": isDashEligible == null ? null : isDashEligible,
        "video_dash_manifest": videoDashManifest == null ? null : videoDashManifest,
        "video_codec": videoCodec == null ? null : videoCodec,
        "number_of_qualities": numberOfQualities == null ? null : numberOfQualities,
    };
}

enum CommercialityStatus { NOT_COMMERCIAL }

final commercialityStatusValues = EnumValues({
    "not_commercial": CommercialityStatus.NOT_COMMERCIAL
});

class CarouselMediaImageVersions2 {
    CarouselMediaImageVersions2({
        this.candidates,
    });

    List<Candidate> candidates;

    factory CarouselMediaImageVersions2.fromJson(Map<String, dynamic> json) => CarouselMediaImageVersions2(
        candidates: List<Candidate>.from(json["candidates"].map((x) => Candidate.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "candidates": List<dynamic>.from(candidates.map((x) => x.toJson())),
    };
}

class Candidate {
    Candidate({
        this.width,
        this.height,
        this.url,
    });

    int width;
    int height;
    String url;

    factory Candidate.fromJson(Map<String, dynamic> json) => Candidate(
        width: json["width"],
        height: json["height"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "url": url,
    };
}

class SharingFrictionInfo {
    SharingFrictionInfo({
        this.shouldHaveSharingFriction,
        this.bloksAppUrl,
    });

    bool shouldHaveSharingFriction;
    dynamic bloksAppUrl;

    factory SharingFrictionInfo.fromJson(Map<String, dynamic> json) => SharingFrictionInfo(
        shouldHaveSharingFriction: json["should_have_sharing_friction"],
        bloksAppUrl: json["bloks_app_url"],
    );

    Map<String, dynamic> toJson() => {
        "should_have_sharing_friction": shouldHaveSharingFriction,
        "bloks_app_url": bloksAppUrl,
    };
}

class Usertags {
    Usertags({
        this.usertagsIn,
    });

    List<In> usertagsIn;

    factory Usertags.fromJson(Map<String, dynamic> json) => Usertags(
        usertagsIn: List<In>.from(json["in"].map((x) => In.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "in": List<dynamic>.from(usertagsIn.map((x) => x.toJson())),
    };
}

class In {
    In({
        this.user,
        this.position,
        this.startTimeInVideoInSec,
        this.durationInVideoInSec,
    });

    FacepileTopLiker user;
    List<double> position;
    dynamic startTimeInVideoInSec;
    dynamic durationInVideoInSec;

    factory In.fromJson(Map<String, dynamic> json) => In(
        user: FacepileTopLiker.fromJson(json["user"]),
        position: List<double>.from(json["position"].map((x) => x.toDouble())),
        startTimeInVideoInSec: json["start_time_in_video_in_sec"],
        durationInVideoInSec: json["duration_in_video_in_sec"],
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "position": List<dynamic>.from(position.map((x) => x)),
        "start_time_in_video_in_sec": startTimeInVideoInSec,
        "duration_in_video_in_sec": durationInVideoInSec,
    };
}

class FacepileTopLiker {
    FacepileTopLiker({
        this.pk,
        this.username,
        this.fullName,
        this.isPrivate,
        this.profilePicUrl,
        this.profilePicId,
        this.isVerified,
        this.followFrictionType,
        this.friendshipStatus,
    });

    int pk;
    String username;
    String fullName;
    bool isPrivate;
    String profilePicUrl;
    String profilePicId;
    bool isVerified;
    int followFrictionType;
    FacepileTopLikerFriendshipStatus friendshipStatus;

    factory FacepileTopLiker.fromJson(Map<String, dynamic> json) => FacepileTopLiker(
        pk: json["pk"],
        username: json["username"],
        fullName: json["full_name"],
        isPrivate: json["is_private"],
        profilePicUrl: json["profile_pic_url"],
        profilePicId: json["profile_pic_id"],
        isVerified: json["is_verified"],
        followFrictionType: json["follow_friction_type"],
        friendshipStatus: json["friendship_status"] == null ? null : FacepileTopLikerFriendshipStatus.fromJson(json["friendship_status"]),
    );

    Map<String, dynamic> toJson() => {
        "pk": pk,
        "username": username,
        "full_name": fullName,
        "is_private": isPrivate,
        "profile_pic_url": profilePicUrl,
        "profile_pic_id": profilePicId,
        "is_verified": isVerified,
        "follow_friction_type": followFrictionType,
        "friendship_status": friendshipStatus == null ? null : friendshipStatus.toJson(),
    };
}

class FacepileTopLikerFriendshipStatus {
    FacepileTopLikerFriendshipStatus({
        this.following,
        this.followedBy,
        this.blocking,
        this.muting,
        this.isPrivate,
        this.incomingRequest,
        this.outgoingRequest,
        this.isBestie,
        this.isRestricted,
        this.isFeedFavorite,
    });

    bool following;
    bool followedBy;
    bool blocking;
    bool muting;
    bool isPrivate;
    bool incomingRequest;
    bool outgoingRequest;
    bool isBestie;
    bool isRestricted;
    bool isFeedFavorite;

    factory FacepileTopLikerFriendshipStatus.fromJson(Map<String, dynamic> json) => FacepileTopLikerFriendshipStatus(
        following: json["following"],
        followedBy: json["followed_by"],
        blocking: json["blocking"],
        muting: json["muting"],
        isPrivate: json["is_private"],
        incomingRequest: json["incoming_request"],
        outgoingRequest: json["outgoing_request"],
        isBestie: json["is_bestie"],
        isRestricted: json["is_restricted"],
        isFeedFavorite: json["is_feed_favorite"],
    );

    Map<String, dynamic> toJson() => {
        "following": following,
        "followed_by": followedBy,
        "blocking": blocking,
        "muting": muting,
        "is_private": isPrivate,
        "incoming_request": incomingRequest,
        "outgoing_request": outgoingRequest,
        "is_bestie": isBestie,
        "is_restricted": isRestricted,
        "is_feed_favorite": isFeedFavorite,
    };
}

class VideoVersion {
    VideoVersion({
        this.type,
        this.width,
        this.height,
        this.url,
        this.id,
    });

    int type;
    int width;
    int height;
    String url;
    String id;

    factory VideoVersion.fromJson(Map<String, dynamic> json) => VideoVersion(
        type: json["type"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "width": width,
        "height": height,
        "url": url,
        "id": id,
    };
}

class ClipsMetadata {
    ClipsMetadata({
        this.musicInfo,
        this.originalSoundInfo,
        this.audioType,
        this.musicCanonicalId,
        this.featuredLabel,
        this.mashupInfo,
        this.nuxInfo,
        this.viewerInteractionSettings,
        this.brandedContentTagInfo,
        this.shoppingInfo,
        this.additionalAudioInfo,
        this.isSharedToFb,
        this.breakingContentInfo,
        this.challengeInfo,
        this.reelsOnTheRiseInfo,
        this.breakingCreatorInfo,
        this.assetRecommendationInfo,
        this.contextualHighlightInfo,
        this.clipsCreationEntryPoint,
        this.audioRankingInfo,
    });

    MusicInfo musicInfo;
    OriginalSoundInfo originalSoundInfo;
    String audioType;
    String musicCanonicalId;
    dynamic featuredLabel;
    MashupInfo mashupInfo;
    dynamic nuxInfo;
    dynamic viewerInteractionSettings;
    BrandedContentTagInfo brandedContentTagInfo;
    dynamic shoppingInfo;
    AdditionalAudioInfo additionalAudioInfo;
    bool isSharedToFb;
    dynamic breakingContentInfo;
    dynamic challengeInfo;
    dynamic reelsOnTheRiseInfo;
    dynamic breakingCreatorInfo;
    dynamic assetRecommendationInfo;
    dynamic contextualHighlightInfo;
    String clipsCreationEntryPoint;
    AudioRankingInfo audioRankingInfo;

    factory ClipsMetadata.fromJson(Map<String, dynamic> json) => ClipsMetadata(
        musicInfo: json["music_info"] == null ? null : MusicInfo.fromJson(json["music_info"]),
        originalSoundInfo: json["original_sound_info"] == null ? null : OriginalSoundInfo.fromJson(json["original_sound_info"]),
        audioType: json["audio_type"],
        musicCanonicalId: json["music_canonical_id"],
        featuredLabel: json["featured_label"],
        mashupInfo: MashupInfo.fromJson(json["mashup_info"]),
        nuxInfo: json["nux_info"],
        viewerInteractionSettings: json["viewer_interaction_settings"],
        brandedContentTagInfo: BrandedContentTagInfo.fromJson(json["branded_content_tag_info"]),
        shoppingInfo: json["shopping_info"],
        additionalAudioInfo: AdditionalAudioInfo.fromJson(json["additional_audio_info"]),
        isSharedToFb: json["is_shared_to_fb"],
        breakingContentInfo: json["breaking_content_info"],
        challengeInfo: json["challenge_info"],
        reelsOnTheRiseInfo: json["reels_on_the_rise_info"],
        breakingCreatorInfo: json["breaking_creator_info"],
        assetRecommendationInfo: json["asset_recommendation_info"],
        contextualHighlightInfo: json["contextual_highlight_info"],
        clipsCreationEntryPoint: json["clips_creation_entry_point"],
        audioRankingInfo: AudioRankingInfo.fromJson(json["audio_ranking_info"]),
    );

    Map<String, dynamic> toJson() => {
        "music_info": musicInfo == null ? null : musicInfo.toJson(),
        "original_sound_info": originalSoundInfo == null ? null : originalSoundInfo.toJson(),
        "audio_type": audioType,
        "music_canonical_id": musicCanonicalId,
        "featured_label": featuredLabel,
        "mashup_info": mashupInfo.toJson(),
        "nux_info": nuxInfo,
        "viewer_interaction_settings": viewerInteractionSettings,
        "branded_content_tag_info": brandedContentTagInfo.toJson(),
        "shopping_info": shoppingInfo,
        "additional_audio_info": additionalAudioInfo.toJson(),
        "is_shared_to_fb": isSharedToFb,
        "breaking_content_info": breakingContentInfo,
        "challenge_info": challengeInfo,
        "reels_on_the_rise_info": reelsOnTheRiseInfo,
        "breaking_creator_info": breakingCreatorInfo,
        "asset_recommendation_info": assetRecommendationInfo,
        "contextual_highlight_info": contextualHighlightInfo,
        "clips_creation_entry_point": clipsCreationEntryPoint,
        "audio_ranking_info": audioRankingInfo.toJson(),
    };
}

class AdditionalAudioInfo {
    AdditionalAudioInfo({
        this.additionalAudioUsername,
        this.audioReattributionInfo,
    });

    dynamic additionalAudioUsername;
    AudioReattributionInfo audioReattributionInfo;

    factory AdditionalAudioInfo.fromJson(Map<String, dynamic> json) => AdditionalAudioInfo(
        additionalAudioUsername: json["additional_audio_username"],
        audioReattributionInfo: AudioReattributionInfo.fromJson(json["audio_reattribution_info"]),
    );

    Map<String, dynamic> toJson() => {
        "additional_audio_username": additionalAudioUsername,
        "audio_reattribution_info": audioReattributionInfo.toJson(),
    };
}

class AudioReattributionInfo {
    AudioReattributionInfo({
        this.shouldAllowRestore,
    });

    bool shouldAllowRestore;

    factory AudioReattributionInfo.fromJson(Map<String, dynamic> json) => AudioReattributionInfo(
        shouldAllowRestore: json["should_allow_restore"],
    );

    Map<String, dynamic> toJson() => {
        "should_allow_restore": shouldAllowRestore,
    };
}

class AudioRankingInfo {
    AudioRankingInfo({
        this.bestAudioClusterId,
    });

    String bestAudioClusterId;

    factory AudioRankingInfo.fromJson(Map<String, dynamic> json) => AudioRankingInfo(
        bestAudioClusterId: json["best_audio_cluster_id"],
    );

    Map<String, dynamic> toJson() => {
        "best_audio_cluster_id": bestAudioClusterId,
    };
}

class BrandedContentTagInfo {
    BrandedContentTagInfo({
        this.canAddTag,
    });

    bool canAddTag;

    factory BrandedContentTagInfo.fromJson(Map<String, dynamic> json) => BrandedContentTagInfo(
        canAddTag: json["can_add_tag"],
    );

    Map<String, dynamic> toJson() => {
        "can_add_tag": canAddTag,
    };
}

class MashupInfo {
    MashupInfo({
        this.mashupsAllowed,
        this.canToggleMashupsAllowed,
        this.hasBeenMashedUp,
        this.formattedMashupsCount,
        this.originalMedia,
        this.nonPrivacyFilteredMashupsMediaCount,
    });

    bool mashupsAllowed;
    bool canToggleMashupsAllowed;
    bool hasBeenMashedUp;
    dynamic formattedMashupsCount;
    dynamic originalMedia;
    dynamic nonPrivacyFilteredMashupsMediaCount;

    factory MashupInfo.fromJson(Map<String, dynamic> json) => MashupInfo(
        mashupsAllowed: json["mashups_allowed"],
        canToggleMashupsAllowed: json["can_toggle_mashups_allowed"],
        hasBeenMashedUp: json["has_been_mashed_up"],
        formattedMashupsCount: json["formatted_mashups_count"],
        originalMedia: json["original_media"],
        nonPrivacyFilteredMashupsMediaCount: json["non_privacy_filtered_mashups_media_count"],
    );

    Map<String, dynamic> toJson() => {
        "mashups_allowed": mashupsAllowed,
        "can_toggle_mashups_allowed": canToggleMashupsAllowed,
        "has_been_mashed_up": hasBeenMashedUp,
        "formatted_mashups_count": formattedMashupsCount,
        "original_media": originalMedia,
        "non_privacy_filtered_mashups_media_count": nonPrivacyFilteredMashupsMediaCount,
    };
}

class MusicInfo {
    MusicInfo({
        this.musicAssetInfo,
        this.musicConsumptionInfo,
        this.pushBlockingTest,
    });

    MusicAssetInfo musicAssetInfo;
    MusicConsumptionInfo musicConsumptionInfo;
    dynamic pushBlockingTest;

    factory MusicInfo.fromJson(Map<String, dynamic> json) => MusicInfo(
        musicAssetInfo: MusicAssetInfo.fromJson(json["music_asset_info"]),
        musicConsumptionInfo: MusicConsumptionInfo.fromJson(json["music_consumption_info"]),
        pushBlockingTest: json["push_blocking_test"],
    );

    Map<String, dynamic> toJson() => {
        "music_asset_info": musicAssetInfo.toJson(),
        "music_consumption_info": musicConsumptionInfo.toJson(),
        "push_blocking_test": pushBlockingTest,
    };
}

class MusicAssetInfo {
    MusicAssetInfo({
        this.audioClusterId,
        this.id,
        this.title,
        this.subtitle,
        this.displayArtist,
        this.artistId,
        this.coverArtworkUri,
        this.coverArtworkThumbnailUri,
        this.progressiveDownloadUrl,
        this.reactiveAudioDownloadUrl,
        this.fastStartProgressiveDownloadUrl,
        this.highlightStartTimesInMs,
        this.isExplicit,
        this.dashManifest,
        this.hasLyrics,
        this.audioAssetId,
        this.durationInMs,
        this.darkMessage,
        this.allowsSaving,
        this.territoryValidityPeriods,
    });

    String audioClusterId;
    String id;
    String title;
    String subtitle;
    String displayArtist;
    String artistId;
    String coverArtworkUri;
    String coverArtworkThumbnailUri;
    String progressiveDownloadUrl;
    dynamic reactiveAudioDownloadUrl;
    String fastStartProgressiveDownloadUrl;
    List<int> highlightStartTimesInMs;
    bool isExplicit;
    dynamic dashManifest;
    bool hasLyrics;
    String audioAssetId;
    int durationInMs;
    dynamic darkMessage;
    bool allowsSaving;
    TerritoryValidityPeriods territoryValidityPeriods;

    factory MusicAssetInfo.fromJson(Map<String, dynamic> json) => MusicAssetInfo(
        audioClusterId: json["audio_cluster_id"],
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        displayArtist: json["display_artist"],
        artistId: json["artist_id"],
        coverArtworkUri: json["cover_artwork_uri"],
        coverArtworkThumbnailUri: json["cover_artwork_thumbnail_uri"],
        progressiveDownloadUrl: json["progressive_download_url"],
        reactiveAudioDownloadUrl: json["reactive_audio_download_url"],
        fastStartProgressiveDownloadUrl: json["fast_start_progressive_download_url"],
        highlightStartTimesInMs: List<int>.from(json["highlight_start_times_in_ms"].map((x) => x)),
        isExplicit: json["is_explicit"],
        dashManifest: json["dash_manifest"],
        hasLyrics: json["has_lyrics"],
        audioAssetId: json["audio_asset_id"],
        durationInMs: json["duration_in_ms"],
        darkMessage: json["dark_message"],
        allowsSaving: json["allows_saving"],
        territoryValidityPeriods: TerritoryValidityPeriods.fromJson(json["territory_validity_periods"]),
    );

    Map<String, dynamic> toJson() => {
        "audio_cluster_id": audioClusterId,
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "display_artist": displayArtist,
        "artist_id": artistId,
        "cover_artwork_uri": coverArtworkUri,
        "cover_artwork_thumbnail_uri": coverArtworkThumbnailUri,
        "progressive_download_url": progressiveDownloadUrl,
        "reactive_audio_download_url": reactiveAudioDownloadUrl,
        "fast_start_progressive_download_url": fastStartProgressiveDownloadUrl,
        "highlight_start_times_in_ms": List<dynamic>.from(highlightStartTimesInMs.map((x) => x)),
        "is_explicit": isExplicit,
        "dash_manifest": dashManifest,
        "has_lyrics": hasLyrics,
        "audio_asset_id": audioAssetId,
        "duration_in_ms": durationInMs,
        "dark_message": darkMessage,
        "allows_saving": allowsSaving,
        "territory_validity_periods": territoryValidityPeriods.toJson(),
    };
}

class TerritoryValidityPeriods {
    TerritoryValidityPeriods();

    factory TerritoryValidityPeriods.fromJson(Map<String, dynamic> json) => TerritoryValidityPeriods(
    );

    Map<String, dynamic> toJson() => {
    };
}

class MusicConsumptionInfo {
    MusicConsumptionInfo({
        this.igArtist,
        this.placeholderProfilePicUrl,
        this.shouldMuteAudio,
        this.shouldMuteAudioReason,
        this.isBookmarked,
        this.overlapDurationInMs,
        this.audioAssetStartTimeInMs,
        this.allowMediaCreationWithMusic,
        this.isTrendingInClips,
        this.formattedClipsMediaCount,
        this.streamingServices,
        this.displayLabels,
    });

    FacepileTopLiker igArtist;
    String placeholderProfilePicUrl;
    bool shouldMuteAudio;
    String shouldMuteAudioReason;
    bool isBookmarked;
    int overlapDurationInMs;
    int audioAssetStartTimeInMs;
    bool allowMediaCreationWithMusic;
    bool isTrendingInClips;
    dynamic formattedClipsMediaCount;
    dynamic streamingServices;
    dynamic displayLabels;

    factory MusicConsumptionInfo.fromJson(Map<String, dynamic> json) => MusicConsumptionInfo(
        igArtist: json["ig_artist"] == null ? null : FacepileTopLiker.fromJson(json["ig_artist"]),
        placeholderProfilePicUrl: json["placeholder_profile_pic_url"],
        shouldMuteAudio: json["should_mute_audio"],
        shouldMuteAudioReason: json["should_mute_audio_reason"],
        isBookmarked: json["is_bookmarked"],
        overlapDurationInMs: json["overlap_duration_in_ms"],
        audioAssetStartTimeInMs: json["audio_asset_start_time_in_ms"],
        allowMediaCreationWithMusic: json["allow_media_creation_with_music"],
        isTrendingInClips: json["is_trending_in_clips"],
        formattedClipsMediaCount: json["formatted_clips_media_count"],
        streamingServices: json["streaming_services"],
        displayLabels: json["display_labels"],
    );

    Map<String, dynamic> toJson() => {
        "ig_artist": igArtist == null ? null : igArtist.toJson(),
        "placeholder_profile_pic_url": placeholderProfilePicUrl,
        "should_mute_audio": shouldMuteAudio,
        "should_mute_audio_reason": shouldMuteAudioReason,
        "is_bookmarked": isBookmarked,
        "overlap_duration_in_ms": overlapDurationInMs,
        "audio_asset_start_time_in_ms": audioAssetStartTimeInMs,
        "allow_media_creation_with_music": allowMediaCreationWithMusic,
        "is_trending_in_clips": isTrendingInClips,
        "formatted_clips_media_count": formattedClipsMediaCount,
        "streaming_services": streamingServices,
        "display_labels": displayLabels,
    };
}

class OriginalSoundInfo {
    OriginalSoundInfo({
        this.audioAssetId,
        this.progressiveDownloadUrl,
        this.dashManifest,
        this.igArtist,
        this.shouldMuteAudio,
        this.originalMediaId,
        this.hideRemixing,
        this.durationInMs,
        this.timeCreated,
        this.originalAudioTitle,
        this.consumptionInfo,
        this.allowCreatorToRename,
        this.canRemixBeSharedToFb,
        this.formattedClipsMediaCount,
        this.audioParts,
        this.isExplicit,
        this.originalAudioSubtype,
        this.isAudioAutomaticallyAttributed,
    });

    int audioAssetId;
    String progressiveDownloadUrl;
    String dashManifest;
    FacepileTopLiker igArtist;
    bool shouldMuteAudio;
    String originalMediaId;
    bool hideRemixing;
    int durationInMs;
    int timeCreated;
    String originalAudioTitle;
    ConsumptionInfo consumptionInfo;
    bool allowCreatorToRename;
    bool canRemixBeSharedToFb;
    dynamic formattedClipsMediaCount;
    List<dynamic> audioParts;
    bool isExplicit;
    String originalAudioSubtype;
    bool isAudioAutomaticallyAttributed;

    factory OriginalSoundInfo.fromJson(Map<String, dynamic> json) => OriginalSoundInfo(
        audioAssetId: json["audio_asset_id"],
        progressiveDownloadUrl: json["progressive_download_url"],
        dashManifest: json["dash_manifest"],
        igArtist: FacepileTopLiker.fromJson(json["ig_artist"]),
        shouldMuteAudio: json["should_mute_audio"],
        originalMediaId: json["original_media_id"],
        hideRemixing: json["hide_remixing"],
        durationInMs: json["duration_in_ms"],
        timeCreated: json["time_created"],
        originalAudioTitle: json["original_audio_title"],
        consumptionInfo: ConsumptionInfo.fromJson(json["consumption_info"]),
        allowCreatorToRename: json["allow_creator_to_rename"],
        canRemixBeSharedToFb: json["can_remix_be_shared_to_fb"],
        formattedClipsMediaCount: json["formatted_clips_media_count"],
        audioParts: List<dynamic>.from(json["audio_parts"].map((x) => x)),
        isExplicit: json["is_explicit"],
        originalAudioSubtype: json["original_audio_subtype"],
        isAudioAutomaticallyAttributed: json["is_audio_automatically_attributed"],
    );

    Map<String, dynamic> toJson() => {
        "audio_asset_id": audioAssetId,
        "progressive_download_url": progressiveDownloadUrl,
        "dash_manifest": dashManifest,
        "ig_artist": igArtist.toJson(),
        "should_mute_audio": shouldMuteAudio,
        "original_media_id": originalMediaId,
        "hide_remixing": hideRemixing,
        "duration_in_ms": durationInMs,
        "time_created": timeCreated,
        "original_audio_title": originalAudioTitle,
        "consumption_info": consumptionInfo.toJson(),
        "allow_creator_to_rename": allowCreatorToRename,
        "can_remix_be_shared_to_fb": canRemixBeSharedToFb,
        "formatted_clips_media_count": formattedClipsMediaCount,
        "audio_parts": List<dynamic>.from(audioParts.map((x) => x)),
        "is_explicit": isExplicit,
        "original_audio_subtype": originalAudioSubtype,
        "is_audio_automatically_attributed": isAudioAutomaticallyAttributed,
    };
}

class ConsumptionInfo {
    ConsumptionInfo({
        this.isBookmarked,
        this.shouldMuteAudioReason,
        this.isTrendingInClips,
    });

    bool isBookmarked;
    String shouldMuteAudioReason;
    bool isTrendingInClips;

    factory ConsumptionInfo.fromJson(Map<String, dynamic> json) => ConsumptionInfo(
        isBookmarked: json["is_bookmarked"],
        shouldMuteAudioReason: json["should_mute_audio_reason"],
        isTrendingInClips: json["is_trending_in_clips"],
    );

    Map<String, dynamic> toJson() => {
        "is_bookmarked": isBookmarked,
        "should_mute_audio_reason": shouldMuteAudioReason,
        "is_trending_in_clips": isTrendingInClips,
    };
}

class Comment {
    Comment({
        this.pk,
        this.userId,
        this.text,
        this.type,
        this.createdAt,
        this.createdAtUtc,
        this.contentType,
        this.status,
        this.bitFlags,
        this.didReportAsSpam,
        this.shareEnabled,
        this.user,
        this.isCovered,
        this.mediaId,
        this.hasLikedComment,
        this.commentLikeCount,
        this.privateReplyStatus,
        this.parentCommentId,
    });

    String pk;
    int userId;
    String text;
    int type;
    int createdAt;
    int createdAtUtc;
    ContentType contentType;
    Status status;
    int bitFlags;
    bool didReportAsSpam;
    bool shareEnabled;
    FacepileTopLiker user;
    bool isCovered;
    String mediaId;
    bool hasLikedComment;
    int commentLikeCount;
    int privateReplyStatus;
    String parentCommentId;

    factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        pk: json["pk"],
        userId: json["user_id"],
        text: json["text"],
        type: json["type"],
        createdAt: json["created_at"],
        createdAtUtc: json["created_at_utc"],
        contentType: contentTypeValues.map[json["content_type"]],
        status: statusValues.map[json["status"]],
        bitFlags: json["bit_flags"],
        didReportAsSpam: json["did_report_as_spam"],
        shareEnabled: json["share_enabled"],
        user: FacepileTopLiker.fromJson(json["user"]),
        isCovered: json["is_covered"],
        mediaId: json["media_id"],
        hasLikedComment: json["has_liked_comment"],
        commentLikeCount: json["comment_like_count"],
        privateReplyStatus: json["private_reply_status"],
        parentCommentId: json["parent_comment_id"] == null ? null : json["parent_comment_id"],
    );

    Map<String, dynamic> toJson() => {
        "pk": pk,
        "user_id": userId,
        "text": text,
        "type": type,
        "created_at": createdAt,
        "created_at_utc": createdAtUtc,
        "content_type": contentTypeValues.reverse[contentType],
        "status": statusValues.reverse[status],
        "bit_flags": bitFlags,
        "did_report_as_spam": didReportAsSpam,
        "share_enabled": shareEnabled,
        "user": user.toJson(),
        "is_covered": isCovered,
        "media_id": mediaId,
        "has_liked_comment": hasLikedComment,
        "comment_like_count": commentLikeCount,
        "private_reply_status": privateReplyStatus,
        "parent_comment_id": parentCommentId == null ? null : parentCommentId,
    };
}

class MediaOrAdImageVersions2 {
    MediaOrAdImageVersions2({
        this.candidates,
        this.additionalCandidates,
        this.animatedThumbnailSpritesheetInfoCandidates,
    });

    List<Candidate> candidates;
    AdditionalCandidates additionalCandidates;
    AnimatedThumbnailSpritesheetInfoCandidates animatedThumbnailSpritesheetInfoCandidates;

    factory MediaOrAdImageVersions2.fromJson(Map<String, dynamic> json) => MediaOrAdImageVersions2(
        candidates: List<Candidate>.from(json["candidates"].map((x) => Candidate.fromJson(x))),
        additionalCandidates: json["additional_candidates"] == null ? null : AdditionalCandidates.fromJson(json["additional_candidates"]),
        animatedThumbnailSpritesheetInfoCandidates: json["animated_thumbnail_spritesheet_info_candidates"] == null ? null : AnimatedThumbnailSpritesheetInfoCandidates.fromJson(json["animated_thumbnail_spritesheet_info_candidates"]),
    );

    Map<String, dynamic> toJson() => {
        "candidates": List<dynamic>.from(candidates.map((x) => x.toJson())),
        "additional_candidates": additionalCandidates == null ? null : additionalCandidates.toJson(),
        "animated_thumbnail_spritesheet_info_candidates": animatedThumbnailSpritesheetInfoCandidates == null ? null : animatedThumbnailSpritesheetInfoCandidates.toJson(),
    };
}

class AdditionalCandidates {
    AdditionalCandidates({
        this.igtvFirstFrame,
        this.firstFrame,
    });

    Candidate igtvFirstFrame;
    Candidate firstFrame;

    factory AdditionalCandidates.fromJson(Map<String, dynamic> json) => AdditionalCandidates(
        igtvFirstFrame: Candidate.fromJson(json["igtv_first_frame"]),
        firstFrame: Candidate.fromJson(json["first_frame"]),
    );

    Map<String, dynamic> toJson() => {
        "igtv_first_frame": igtvFirstFrame.toJson(),
        "first_frame": firstFrame.toJson(),
    };
}

class AnimatedThumbnailSpritesheetInfoCandidates {
    AnimatedThumbnailSpritesheetInfoCandidates({
        this.animatedThumbnailSpritesheetInfoCandidatesDefault,
    });

    Default animatedThumbnailSpritesheetInfoCandidatesDefault;

    factory AnimatedThumbnailSpritesheetInfoCandidates.fromJson(Map<String, dynamic> json) => AnimatedThumbnailSpritesheetInfoCandidates(
        animatedThumbnailSpritesheetInfoCandidatesDefault: Default.fromJson(json["default"]),
    );

    Map<String, dynamic> toJson() => {
        "default": animatedThumbnailSpritesheetInfoCandidatesDefault.toJson(),
    };
}

class Default {
    Default({
        this.videoLength,
        this.thumbnailWidth,
        this.thumbnailHeight,
        this.thumbnailDuration,
        this.spriteUrls,
        this.thumbnailsPerRow,
        this.totalThumbnailNumPerSprite,
        this.maxThumbnailsPerSprite,
        this.spriteWidth,
        this.spriteHeight,
        this.renderedWidth,
        this.fileSizeKb,
    });

    double videoLength;
    int thumbnailWidth;
    int thumbnailHeight;
    double thumbnailDuration;
    List<String> spriteUrls;
    int thumbnailsPerRow;
    int totalThumbnailNumPerSprite;
    int maxThumbnailsPerSprite;
    int spriteWidth;
    int spriteHeight;
    int renderedWidth;
    int fileSizeKb;

    factory Default.fromJson(Map<String, dynamic> json) => Default(
        videoLength: json["video_length"].toDouble(),
        thumbnailWidth: json["thumbnail_width"],
        thumbnailHeight: json["thumbnail_height"],
        thumbnailDuration: json["thumbnail_duration"].toDouble(),
        spriteUrls: List<String>.from(json["sprite_urls"].map((x) => x)),
        thumbnailsPerRow: json["thumbnails_per_row"],
        totalThumbnailNumPerSprite: json["total_thumbnail_num_per_sprite"],
        maxThumbnailsPerSprite: json["max_thumbnails_per_sprite"],
        spriteWidth: json["sprite_width"],
        spriteHeight: json["sprite_height"],
        renderedWidth: json["rendered_width"],
        fileSizeKb: json["file_size_kb"],
    );

    Map<String, dynamic> toJson() => {
        "video_length": videoLength,
        "thumbnail_width": thumbnailWidth,
        "thumbnail_height": thumbnailHeight,
        "thumbnail_duration": thumbnailDuration,
        "sprite_urls": List<dynamic>.from(spriteUrls.map((x) => x)),
        "thumbnails_per_row": thumbnailsPerRow,
        "total_thumbnail_num_per_sprite": totalThumbnailNumPerSprite,
        "max_thumbnails_per_sprite": maxThumbnailsPerSprite,
        "sprite_width": spriteWidth,
        "sprite_height": spriteHeight,
        "rendered_width": renderedWidth,
        "file_size_kb": fileSizeKb,
    };
}

enum InlineComposerDisplayCondition { IMPRESSION_TRIGGER }

final inlineComposerDisplayConditionValues = EnumValues({
    "impression_trigger": InlineComposerDisplayCondition.IMPRESSION_TRIGGER
});

enum IntegrityReviewDecision { PENDING }

final integrityReviewDecisionValues = EnumValues({
    "pending": IntegrityReviewDecision.PENDING
});

enum InventorySource { COAUTHORED_POST_UNCONNECTED, MEDIA_OR_AD }

final inventorySourceValues = EnumValues({
    "coauthored_post_unconnected": InventorySource.COAUTHORED_POST_UNCONNECTED,
    "media_or_ad": InventorySource.MEDIA_OR_AD
});

class MediaCroppingInfo {
    MediaCroppingInfo({
        this.squareCrop,
    });

    SquareCrop squareCrop;

    factory MediaCroppingInfo.fromJson(Map<String, dynamic> json) => MediaCroppingInfo(
        squareCrop: SquareCrop.fromJson(json["square_crop"]),
    );

    Map<String, dynamic> toJson() => {
        "square_crop": squareCrop.toJson(),
    };
}

class SquareCrop {
    SquareCrop({
        this.cropLeft,
        this.cropRight,
        this.cropTop,
        this.cropBottom,
    });

    int cropLeft;
    int cropRight;
    int cropTop;
    int cropBottom;

    factory SquareCrop.fromJson(Map<String, dynamic> json) => SquareCrop(
        cropLeft: json["crop_left"],
        cropRight: json["crop_right"],
        cropTop: json["crop_top"],
        cropBottom: json["crop_bottom"],
    );

    Map<String, dynamic> toJson() => {
        "crop_left": cropLeft,
        "crop_right": cropRight,
        "crop_top": cropTop,
        "crop_bottom": cropBottom,
    };
}

class MusicMetadata {
    MusicMetadata({
        this.musicCanonicalId,
        this.audioType,
        this.musicInfo,
        this.originalSoundInfo,
    });

    String musicCanonicalId;
    dynamic audioType;
    dynamic musicInfo;
    dynamic originalSoundInfo;

    factory MusicMetadata.fromJson(Map<String, dynamic> json) => MusicMetadata(
        musicCanonicalId: json["music_canonical_id"],
        audioType: json["audio_type"],
        musicInfo: json["music_info"],
        originalSoundInfo: json["original_sound_info"],
    );

    Map<String, dynamic> toJson() => {
        "music_canonical_id": musicCanonicalId,
        "audio_type": audioType,
        "music_info": musicInfo,
        "original_sound_info": originalSoundInfo,
    };
}

enum ProductType { FEED, CAROUSEL_CONTAINER, CLIPS }

final productTypeValues = EnumValues({
    "carousel_container": ProductType.CAROUSEL_CONTAINER,
    "clips": ProductType.CLIPS,
    "feed": ProductType.FEED
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
