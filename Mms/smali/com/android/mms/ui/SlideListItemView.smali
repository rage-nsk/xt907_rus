.class public Lcom/android/mms/ui/SlideListItemView;
.super Landroid/widget/LinearLayout;
.source "SlideListItemView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mAttachmentIcon:Landroid/widget/ImageView;

.field private mAttachmentName:Landroid/widget/TextView;

.field private mImagePreview:Landroid/widget/ImageView;

.field private mTextPreview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    const v0, 0x7f0f0069

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 62
    const v0, 0x7f0f0067

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f0f006a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0f006b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    .line 65
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 163
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 168
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "audio"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImage(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    if-nez p3, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "SlideListItemView"

    const-string v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .param p1, "fit"    # Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 103
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 112
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 128
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 132
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
