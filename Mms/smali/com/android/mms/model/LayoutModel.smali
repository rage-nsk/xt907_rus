.class public Lcom/android/mms/model/LayoutModel;
.super Lcom/android/mms/model/Model;
.source "LayoutModel.java"


# instance fields
.field private mImageRegion:Lcom/android/mms/model/RegionModel;

.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

.field private mLayoutType:I

.field private mNonStdRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRootLayout:Lcom/android/mms/model/RegionModel;

.field private mTextRegion:Lcom/android/mms/model/RegionModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 48
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 50
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultRootLayout()V

    .line 51
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultImageRegion()V

    .line 52
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultTextRegion()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "rootLayout"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/RegionModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 40
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 56
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 57
    iput-object p1, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    .line 61
    .local v1, "r":Lcom/android/mms/model/RegionModel;
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "rId":Ljava/lang/String;
    const-string v3, "Image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    iput-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    .line 64
    :cond_0
    const-string v3, "Text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    iput-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v1    # "r":Lcom/android/mms/model/RegionModel;
    .end local v2    # "rId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->validateLayouts()V

    .line 75
    return-void
.end method

.method private createDefaultImageRegion()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Image"

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 89
    return-void
.end method

.method private createDefaultRootLayout()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    .line 80
    return-void
.end method

.method private createDefaultTextRegion()V
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Text"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v4}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    .line 99
    return-void
.end method

.method private validateLayouts()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultRootLayout()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultImageRegion()V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_2

    .line 111
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultTextRegion()V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 118
    return-void

    .line 116
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public changeTo(I)V
    .locals 4
    .param p1, "layout"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    if-nez v0, :cond_1

    .line 195
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 198
    :cond_1
    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    if-eq v0, p1, :cond_2

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 215
    const-string v0, "Mms/slideshow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown layout type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 202
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 203
    iput p1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 204
    invoke-virtual {p0, v3}, Lcom/android/mms/model/LayoutModel;->notifyModelChanged(Z)V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 209
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 210
    iput p1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 211
    invoke-virtual {p0, v3}, Lcom/android/mms/model/LayoutModel;->notifyModelChanged(Z)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;
    .locals 3
    .param p1, "rId"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v2, "Image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 173
    :goto_0
    return-object v1

    .line 161
    :cond_0
    const-string v2, "Text"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    .line 165
    .local v1, "r":Lcom/android/mms/model/RegionModel;
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 173
    .end local v1    # "r":Lcom/android/mms/model/RegionModel;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public getLayoutHeight()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutType()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v0

    return v0
.end method

.method public getRegions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    return-object v0
.end method

.method public getTextRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 243
    :cond_2
    return-void
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    .line 274
    :cond_2
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 259
    :cond_2
    return-void
.end method
