.class public Lcom/android/mms/vcard/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/vcard/VCardUtils$TextUtilsPort;,
        Lcom/android/mms/vcard/VCardUtils$PhoneNumberUtilsPort;,
        Lcom/android/mms/vcard/VCardUtils$QuotedPrintableCodecPort;,
        Lcom/android/mms/vcard/VCardUtils$DecoderException;
    }
.end annotation


# static fields
.field private static final sEscapeIndicatorsV30:[I

.field private static final sEscapeIndicatorsV40:[I

.field private static final sKnownImPropNameMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypeMap_StoI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypesMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMobilePhoneLabelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneTypesUnknownToContactsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 134
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CAR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CAR"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PAGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "PAGER"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ISDN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "ISDN"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "HOME"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "WORK"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CELL"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CALLBACK"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "COMPANY-MAIN"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "RADIO"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "TTY-TDD"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "ASSISTANT"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "VOICE"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    .line 159
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "MODEM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "MSG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "BBS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "VIDEO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    .line 165
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-GOOGLE-TALK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-NETMEETING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MOBILE"

    aput-object v3, v1, v2

    const-string v2, "\u643a\u5e2f\u96fb\u8a71"

    aput-object v2, v1, v5

    const-string v2, "\u643a\u5e2f"

    aput-object v2, v1, v4

    const-string v2, "\u30b1\u30a4\u30bf\u30a4"

    aput-object v2, v1, v6

    const-string v2, "\uff79\uff72\uff80\uff72"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/mms/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    .line 476
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Character;

    const/4 v2, 0x0

    const/16 v3, 0x5b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/mms/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    .line 578
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    .line 582
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    return-void

    .line 578
    nop

    :array_0
    .array-data 4
        0x3a
        0x3b
        0x2c
        0x20
    .end array-data

    .line 582
    :array_1
    .array-data 4
        0x3b
        0x3a
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 833
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 834
    return-void
.end method

.method public static varargs areAllEmpty([Ljava/lang/String;)Z
    .locals 6
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 689
    if-nez p0, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v4

    .line 693
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 694
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 695
    const/4 v4, 0x0

    goto :goto_0

    .line 693
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static constructListFromValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "vcardType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 383
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_6

    .line 384
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 385
    .local v1, "ch":C
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_4

    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_4

    .line 386
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 388
    .local v5, "nextCh":C
    invoke-static {p1}, Lcom/android/mms/vcard/VCardConfig;->isVersion40(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 389
    invoke-static {v5}, Lcom/android/mms/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .line 400
    .local v6, "unescapedString":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_3

    .line 401
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    add-int/lit8 v2, v2, 0x1

    .line 383
    .end local v5    # "nextCh":C
    .end local v6    # "unescapedString":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    .restart local v5    # "nextCh":C
    :cond_0
    invoke-static {p1}, Lcom/android/mms/vcard/VCardConfig;->isVersion30(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 391
    invoke-static {v5}, Lcom/android/mms/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "unescapedString":Ljava/lang/String;
    goto :goto_1

    .line 393
    .end local v6    # "unescapedString":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/android/mms/vcard/VCardConfig;->isVersion21(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 395
    const-string v7, "vCard"

    const-string v8, "Unknown vCard type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    invoke-static {v5}, Lcom/android/mms/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "unescapedString":Ljava/lang/String;
    goto :goto_1

    .line 404
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 406
    .end local v5    # "nextCh":C
    .end local v6    # "unescapedString":Ljava/lang/String;
    :cond_4
    const/16 v7, 0x3b

    if-ne v1, v7, :cond_5

    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 410
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 413
    .end local v1    # "ch":C
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    return-object v4
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 340
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x20

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/vcard/VCardUtils;->sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "nameList":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 350
    .local v2, "first":Z
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 351
    const/4 v2, 0x0

    .line 352
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_0
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 355
    .local v6, "namePart":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 356
    if-eqz v2, :cond_2

    .line 357
    const/4 v2, 0x0

    .line 361
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 364
    .end local v6    # "namePart":Ljava/lang/String;
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 365
    if-nez v2, :cond_4

    .line 366
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :cond_4
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 499
    if-nez p0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v12

    .line 502
    :cond_1
    const/16 v11, 0x41

    .line 503
    .local v11, "upperAlphabetFirst":I
    const/16 v10, 0x5b

    .line 504
    .local v10, "upperAlphabetAfterLast":I
    const/16 v8, 0x61

    .line 505
    .local v8, "lowerAlphabetFirst":I
    const/16 v7, 0x7b

    .line 506
    .local v7, "lowerAlphabetAfterLast":I
    const/16 v2, 0x30

    .line 507
    .local v2, "digitFirst":I
    const/16 v1, 0x3a

    .line 508
    .local v1, "digitAfterLast":I
    const/16 v3, 0x2d

    .line 509
    .local v3, "hyphen":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 510
    .local v9, "str":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 513
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 514
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 515
    invoke-virtual {v9, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 516
    .local v0, "codepoint":I
    const/16 v13, 0x61

    if-gt v13, v0, :cond_3

    const/16 v13, 0x7b

    if-lt v0, v13, :cond_6

    :cond_3
    const/16 v13, 0x41

    if-gt v13, v0, :cond_4

    const/16 v13, 0x5b

    if-lt v0, v13, :cond_6

    :cond_4
    const/16 v13, 0x30

    if-gt v13, v0, :cond_5

    const/16 v13, 0x3a

    if-lt v0, v13, :cond_6

    :cond_5
    const/16 v13, 0x2d

    if-eq v0, v13, :cond_6

    .line 520
    const/4 v12, 0x0

    goto :goto_0

    .line 514
    :cond_6
    invoke-virtual {v9, v4, v12}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_1
.end method

.method public static varargs containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 492
    if-nez p0, :cond_0

    .line 493
    const/4 v0, 0x1

    .line 495
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 456
    if-nez p0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v7

    .line 459
    :cond_1
    const/16 v0, 0x20

    .line 460
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 461
    .local v1, "asciiLast":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 462
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 465
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 466
    .local v5, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 467
    invoke-virtual {v6, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 468
    .local v2, "c":I
    const/16 v8, 0x20

    if-gt v8, v2, :cond_3

    const/16 v8, 0x7e

    if-le v2, v8, :cond_4

    .line 469
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 466
    :cond_4
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_1
.end method

.method public static varargs containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 449
    if-nez p0, :cond_0

    .line 450
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsOnlyPrintableAscii(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 425
    if-nez p0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v2

    .line 428
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 429
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 432
    invoke-static {v1}, Lcom/android/mms/vcard/VCardUtils$TextUtilsPort;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 433
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs containsOnlyPrintableAscii([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 418
    if-nez p0, :cond_0

    .line 419
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/vcard/VCardUtils;->containsOnlyPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsOnlyWhiteSpaces(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 535
    if-nez p0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v4

    .line 538
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 539
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 542
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 543
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 544
    invoke-virtual {v3, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 545
    const/4 v4, 0x0

    goto :goto_0

    .line 543
    :cond_3
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_1
.end method

.method public static varargs containsOnlyWhiteSpaces([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 528
    if-nez p0, :cond_0

    .line 529
    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/vcard/VCardUtils;->containsOnlyWhiteSpaces(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "originalString"    # Ljava/lang/String;
    .param p1, "sourceCharset"    # Ljava/lang/String;
    .param p2, "targetCharset"    # Ljava/lang/String;

    .prologue
    .line 814
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 827
    .end local p0    # "originalString":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 817
    .restart local p0    # "originalString":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 818
    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 821
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 822
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 824
    :try_start_0
    new-instance p0, Ljava/lang/String;

    .end local p0    # "originalString":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 825
    :catch_0
    move-exception v3

    .line 826
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "vCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to encode: charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getPhoneNumberFormat(I)I
    .locals 1
    .param p0, "vcardType"    # I

    .prologue
    .line 329
    invoke-static {p0}, Lcom/android/mms/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x2

    .line 333
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v0

    goto :goto_0
.end method

.method public static getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v13, 0x7

    .line 195
    if-nez p1, :cond_0

    .line 196
    const-string p1, ""

    .line 198
    :cond_0
    const/4 v7, -0x1

    .line 199
    .local v7, "type":I
    const/4 v4, 0x0

    .line 200
    .local v4, "label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 201
    .local v3, "isFax":Z
    const/4 v0, 0x0

    .line 203
    .local v0, "hasPref":Z
    if-eqz p0, :cond_8

    .line 204
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 205
    .local v9, "typeStringOrg":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 208
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 209
    .local v10, "typeStringUpperCase":Ljava/lang/String;
    const-string v11, "PREF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 210
    const/4 v0, 0x1

    goto :goto_0

    .line 211
    :cond_2
    const-string v11, "FAX"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 212
    const/4 v3, 0x1

    goto :goto_0

    .line 215
    :cond_3
    const-string v11, "X-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-gez v7, :cond_6

    .line 216
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "labelCandidate":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    .line 224
    sget-object v11, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 225
    .local v6, "tmp":Ljava/lang/Integer;
    if-eqz v6, :cond_7

    .line 226
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 239
    .local v8, "typeCandidate":I
    const-string v11, "@"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 240
    .local v2, "indexOfAt":I
    const/4 v11, 0x6

    if-ne v8, v11, :cond_4

    if-lez v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-lt v2, v11, :cond_5

    :cond_4
    if-ltz v7, :cond_5

    if-eqz v7, :cond_5

    if-ne v7, v13, :cond_1

    .line 245
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    .line 218
    .end local v2    # "indexOfAt":I
    .end local v5    # "labelCandidate":Ljava/lang/String;
    .end local v6    # "tmp":Ljava/lang/Integer;
    .end local v8    # "typeCandidate":I
    :cond_6
    move-object v5, v9

    .restart local v5    # "labelCandidate":Ljava/lang/String;
    goto :goto_1

    .line 247
    .restart local v6    # "tmp":Ljava/lang/Integer;
    :cond_7
    if-gez v7, :cond_1

    .line 248
    const/4 v7, 0x0

    .line 249
    move-object v4, v5

    goto :goto_0

    .line 254
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "labelCandidate":Ljava/lang/String;
    .end local v6    # "tmp":Ljava/lang/Integer;
    .end local v9    # "typeStringOrg":Ljava/lang/String;
    .end local v10    # "typeStringUpperCase":Ljava/lang/String;
    :cond_8
    if-gez v7, :cond_9

    .line 255
    if-eqz v0, :cond_b

    .line 256
    const/16 v7, 0xc

    .line 262
    :cond_9
    :goto_2
    if-eqz v3, :cond_a

    .line 263
    const/4 v11, 0x1

    if-ne v7, v11, :cond_c

    .line 264
    const/4 v7, 0x5

    .line 271
    :cond_a
    :goto_3
    if-nez v7, :cond_e

    .line 274
    .end local v4    # "label":Ljava/lang/String;
    :goto_4
    return-object v4

    .line 259
    .restart local v4    # "label":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x1

    goto :goto_2

    .line 265
    :cond_c
    const/4 v11, 0x3

    if-ne v7, v11, :cond_d

    .line 266
    const/4 v7, 0x4

    goto :goto_3

    .line 267
    :cond_d
    if-ne v7, v13, :cond_a

    .line 268
    const/16 v7, 0xd

    goto :goto_3

    .line 274
    :cond_e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4
.end method

.method public static getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    .line 186
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isMobilePhoneLabel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 283
    const-string v0, "_AUTO_CELL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isV21Word(Ljava/lang/String;)Z
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 562
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v5

    .line 565
    :cond_1
    const/16 v0, 0x20

    .line 566
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 567
    .local v1, "asciiLast":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 568
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 569
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 570
    .local v2, "c":I
    const/16 v6, 0x20

    if-gt v6, v2, :cond_2

    const/16 v6, 0x7e

    if-gt v2, v6, :cond_2

    sget-object v6, Lcom/android/mms/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    int-to-char v7, v2

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 572
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 568
    :cond_3
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_1
.end method

.method public static isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "strictLineBreaking"    # Z
    .param p2, "sourceCharset"    # Ljava/lang/String;
    .param p3, "targetCharset"    # Ljava/lang/String;

    .prologue
    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 715
    .local v11, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_2

    .line 716
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 717
    .local v4, "ch":C
    const/16 v19, 0x3d

    move/from16 v0, v19

    if-ne v4, v0, :cond_1

    add-int/lit8 v19, v11, -0x1

    move/from16 v0, v19

    if-ge v7, v0, :cond_1

    .line 718
    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 719
    .local v15, "nextCh":C
    const/16 v19, 0x20

    move/from16 v0, v19

    if-eq v15, v0, :cond_0

    const/16 v19, 0x9

    move/from16 v0, v19

    if-ne v15, v0, :cond_1

    .line 720
    :cond_0
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    add-int/lit8 v7, v7, 0x1

    .line 715
    .end local v15    # "nextCh":C
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 727
    .end local v4    # "ch":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 731
    .local v16, "quotedPrintable":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 732
    const-string v19, "\r\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 762
    .local v13, "lines":[Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    move-object v2, v13

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v10, :cond_a

    aget-object v12, v2, v8

    .line 764
    .local v12, "line":Ljava/lang/String;
    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 765
    const/16 v19, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 767
    :cond_3
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 734
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "lines":[Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v11

    .line 736
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v11, :cond_8

    .line 738
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 739
    .restart local v4    # "ch":C
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v4, v0, :cond_6

    .line 740
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 737
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 742
    :cond_6
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v4, v0, :cond_7

    .line 743
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v19, v11, -0x1

    move/from16 v0, v19

    if-ge v7, v0, :cond_5

    .line 746
    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 747
    .restart local v15    # "nextCh":C
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v15, v0, :cond_5

    .line 748
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 752
    .end local v15    # "nextCh":C
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 755
    .end local v4    # "ch":C
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 756
    .local v9, "lastLine":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_9

    .line 757
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .restart local v13    # "lines":[Ljava/lang/String;
    goto/16 :goto_2

    .line 770
    .end local v9    # "lastLine":Ljava/lang/String;
    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v10    # "len$":I
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 771
    .local v18, "rawString":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 772
    const-string v19, "vCard"

    const-string v20, "Given raw string is empty."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_b
    const/16 v17, 0x0

    .line 777
    .local v17, "rawBytes":[B
    :try_start_0
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 783
    :goto_6
    const/4 v5, 0x0

    .line 785
    .local v5, "decodedBytes":[B
    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/android/mms/vcard/VCardUtils$QuotedPrintableCodecPort;->decodeQuotedPrintable([B)[B
    :try_end_1
    .catch Lcom/android/mms/vcard/VCardUtils$DecoderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 792
    :goto_7
    :try_start_2
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 795
    :goto_8
    return-object v19

    .line 778
    .end local v5    # "decodedBytes":[B
    :catch_0
    move-exception v6

    .line 779
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v19, "vCard"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to decode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    goto :goto_6

    .line 786
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "decodedBytes":[B
    :catch_1
    move-exception v6

    .line 787
    .local v6, "e":Lcom/android/mms/vcard/VCardUtils$DecoderException;
    const-string v19, "vCard"

    const-string v20, "DecoderException is thrown."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    move-object/from16 v5, v17

    goto :goto_7

    .line 793
    .end local v6    # "e":Lcom/android/mms/vcard/VCardUtils$DecoderException;
    :catch_2
    move-exception v6

    .line 794
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v19, "vCard"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to encode: charset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    goto :goto_8
.end method

.method public static sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 297
    .local v0, "list":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/mms/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v1

    .line 298
    .local v1, "nameOrderType":I
    sparse-switch v1, :sswitch_data_0

    .line 319
    aput-object p3, v0, v3

    .line 320
    aput-object p2, v0, v4

    .line 321
    aput-object p1, v0, v5

    .line 325
    :goto_0
    return-object v0

    .line 300
    :sswitch_0
    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/android/mms/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    aput-object p3, v2, v3

    invoke-static {v2}, Lcom/android/mms/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    aput-object p3, v0, v3

    .line 303
    aput-object p2, v0, v4

    .line 304
    aput-object p1, v0, v5

    goto :goto_0

    .line 306
    :cond_0
    aput-object p1, v0, v3

    .line 307
    aput-object p2, v0, v4

    .line 308
    aput-object p3, v0, v5

    goto :goto_0

    .line 313
    :sswitch_1
    aput-object p2, v0, v3

    .line 314
    aput-object p3, v0, v4

    .line 315
    aput-object p1, v0, v5

    goto :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "orgString"    # Ljava/lang/String;

    .prologue
    .line 639
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 640
    const/4 v5, 0x0

    .line 655
    :goto_0
    return-object v5

    .line 642
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 644
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 647
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 648
    .local v1, "ch":C
    invoke-static {v1}, Lcom/android/mms/vcard/JapaneseUtils;->tryGetHalfWidthText(C)Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "halfWidthText":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 650
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :goto_2
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_1

    .line 652
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 655
    .end local v1    # "ch":C
    .end local v2    # "halfWidthText":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 14
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "escapeIndicators"    # [I

    .prologue
    .line 608
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 609
    const-string p0, ""

    .line 611
    :cond_0
    const/16 v1, 0x20

    .line 612
    .local v1, "asciiFirst":I
    const/16 v2, 0x7e

    .line 613
    .local v2, "asciiLast":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 615
    .local v9, "length":I
    const/4 v10, 0x0

    .line 616
    .local v10, "needQuote":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_4

    .line 617
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 618
    .local v4, "codePoint":I
    const/16 v12, 0x20

    if-lt v4, v12, :cond_1

    const/16 v12, 0x22

    if-ne v4, v12, :cond_2

    .line 616
    :cond_1
    :goto_1
    const/4 v12, 0x1

    invoke-virtual {p0, v5, v12}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v5

    goto :goto_0

    .line 622
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 623
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_1

    aget v7, v0, v6

    .line 624
    .local v7, "indicator":I
    if-ne v4, v7, :cond_3

    .line 625
    const/4 v10, 0x1

    .line 626
    goto :goto_1

    .line 623
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 631
    .end local v0    # "arr$":[I
    .end local v4    # "codePoint":I
    .end local v6    # "i$":I
    .end local v7    # "indicator":I
    .end local v8    # "len$":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 632
    .local v11, "result":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-static {v12}, Lcom/android/mms/vcard/VCardUtils;->containsOnlyWhiteSpaces([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_5
    const-string v11, ""

    .end local v11    # "result":Ljava/lang/String;
    :cond_6
    :goto_3
    return-object v11

    .restart local v11    # "result":Ljava/lang/String;
    :cond_7
    if-eqz v10, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x22

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x22

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3
.end method

.method public static toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 600
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    invoke-static {p0, v0}, Lcom/android/mms/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 604
    sget-object v0, Lcom/android/mms/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    invoke-static {p0, v0}, Lcom/android/mms/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
