.class public Lcom/android/mms/vcard/VCardEntry$WebsiteData;
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
    name = "WebsiteData"
.end annotation


# instance fields
.field private final mWebsite:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "website"    # Ljava/lang/String;

    .prologue
    .line 1180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1181
    iput-object p1, p0, Lcom/android/mms/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    .line 1182
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1205
    if-ne p0, p1, :cond_0

    .line 1206
    const/4 v1, 0x1

    .line 1212
    :goto_0
    return v1

    .line 1208
    :cond_0
    instance-of v1, p1, Lcom/android/mms/vcard/VCardEntry$WebsiteData;

    if-nez v1, :cond_1

    .line 1209
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1211
    check-cast v0, Lcom/android/mms/vcard/VCardEntry$WebsiteData;

    .line 1212
    .local v0, "websiteData":Lcom/android/mms/vcard/VCardEntry$WebsiteData;
    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/mms/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEntryLabel()Lcom/android/mms/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1227
    sget-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "website: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
