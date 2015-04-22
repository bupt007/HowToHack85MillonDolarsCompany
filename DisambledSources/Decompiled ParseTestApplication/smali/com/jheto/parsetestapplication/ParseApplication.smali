.class public Lcom/jheto/parsetestapplication/ParseApplication;
.super Landroid/app/Application;
.source "ParseApplication.java"


# static fields
.field public static YOUR_APPLICATION_ID:Ljava/lang/String;

.field public static YOUR_CLIENT_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "M2tq6g4vV2xsNgZKqAEw0zkS5odMOaBWcxVqWRWM"

    sput-object v0, Lcom/jheto/parsetestapplication/ParseApplication;->YOUR_APPLICATION_ID:Ljava/lang/String;

    .line 14
    const-string v0, "uIJY26yLax6QUH6aNN0HpiI3A3UkVKc3vioyIxFv"

    sput-object v0, Lcom/jheto/parsetestapplication/ParseApplication;->YOUR_CLIENT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    invoke-virtual {p0}, Lcom/jheto/parsetestapplication/ParseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 21
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/parse/ParseCrashReporting;->enable(Landroid/content/Context;)V

    .line 22
    invoke-static {p0}, Lcom/parse/Parse;->enableLocalDatastore(Landroid/content/Context;)V

    .line 23
    const v2, 0x7f040003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/parse/Parse;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/parse/ParseUser;->enableAutomaticUser()V

    .line 25
    new-instance v0, Lcom/parse/ParseACL;

    invoke-direct {v0}, Lcom/parse/ParseACL;-><init>()V

    .line 26
    .local v0, "defaultACL":Lcom/parse/ParseACL;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/parse/ParseACL;->setDefaultACL(Lcom/parse/ParseACL;Z)V

    .line 27
    return-void
.end method
