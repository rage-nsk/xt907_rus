.class public interface abstract Lcom/android/mms/vcard/VCardEntry$EntryElementIterator;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EntryElementIterator"
.end annotation


# virtual methods
.method public abstract onElement(Lcom/android/mms/vcard/VCardEntry$EntryElement;)Z
.end method

.method public abstract onElementGroupEnded()V
.end method

.method public abstract onElementGroupStarted(Lcom/android/mms/vcard/VCardEntry$EntryLabel;)V
.end method

.method public abstract onIterationEnded()V
.end method

.method public abstract onIterationStarted()V
.end method
