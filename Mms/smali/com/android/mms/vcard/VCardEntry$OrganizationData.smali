.class public Lcom/android/mms/vcard/VCardEntry$OrganizationData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/mms/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrganizationData"
.end annotation


# instance fields
.field private mDepartmentName:Ljava/lang/String;

.field private mIsPrimary:Z

.field private mOrganizationName:Ljava/lang/String;

.field private final mPhoneticName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "organizationName"    # Ljava/lang/String;
    .param p2, "departmentName"    # Ljava/lang/String;
    .param p3, "titleName"    # Ljava/lang/String;
    .param p4, "phoneticName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "isPrimary"    # Z

    .prologue
    .line 746
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput p5, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mType:I

    .line 748
    iput-object p1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    .line 749
    iput-object p2, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    .line 750
    iput-object p3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    .line 751
    iput-object p4, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    .line 752
    iput-boolean p6, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    .line 753
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/vcard/VCardEntry$OrganizationData;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/vcard/VCardEntry$OrganizationData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/vcard/VCardEntry$OrganizationData;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/vcard/VCardEntry$OrganizationData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/mms/vcard/VCardEntry$OrganizationData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/vcard/VCardEntry$OrganizationData;
    .param p1, "x1"    # Z

    .prologue
    .line 733
    iput-boolean p1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/vcard/VCardEntry$OrganizationData;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/vcard/VCardEntry$OrganizationData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 812
    if-ne p0, p1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return v1

    .line 815
    :cond_1
    instance-of v3, p1, Lcom/android/mms/vcard/VCardEntry$OrganizationData;

    if-nez v3, :cond_2

    move v1, v2

    .line 816
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 818
    check-cast v0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;

    .line 819
    .local v0, "organization":Lcom/android/mms/vcard/VCardEntry$OrganizationData;
    iget v3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mType:I

    iget v4, v0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/android/mms/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 845
    sget-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getFormattedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 762
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 763
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_1
    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :cond_2
    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 769
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 770
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_3
    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOrganizationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 828
    iget v0, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mType:I

    .line 829
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 830
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 831
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 832
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x4cf

    :goto_2
    add-int v0, v2, v1

    .line 833
    return v0

    :cond_1
    move v1, v2

    .line 829
    goto :goto_0

    :cond_2
    move v1, v2

    .line 830
    goto :goto_1

    .line 832
    :cond_3
    const/16 v1, 0x4d5

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 838
    const-string v0, "type: %d, organization: %s, department: %s, title: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
