.class Lcom/android/mms/ui/SlideshowPresenter$1;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, v2, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v2, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    .line 73
    .local v0, "layout":Lcom/android/mms/model/LayoutModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v4

    # invokes: Lcom/android/mms/ui/SlideshowPresenter;->getWidthTransformRatio(II)F
    invoke-static {v3, p1, v4}, Lcom/android/mms/ui/SlideshowPresenter;->access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v3

    iput v3, v2, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 75
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v4

    # invokes: Lcom/android/mms/ui/SlideshowPresenter;->getHeightTransformRatio(II)F
    invoke-static {v3, p2, v4}, Lcom/android/mms/ui/SlideshowPresenter;->access$100(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v3

    iput v3, v2, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    .line 79
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v2, v2, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v3, v3, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, v2, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 81
    .local v1, "ratio":F
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput v1, v2, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 82
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput v1, v2, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    .line 87
    return-void

    .line 79
    .end local v1    # "ratio":F
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, v2, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    goto :goto_0
.end method
