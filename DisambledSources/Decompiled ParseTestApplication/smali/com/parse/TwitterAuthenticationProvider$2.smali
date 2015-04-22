.class Lcom/parse/TwitterAuthenticationProvider$2;
.super Ljava/lang/Object;
.source "TwitterAuthenticationProvider.java"

# interfaces
.implements Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/TwitterAuthenticationProvider;->authenticateAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/TwitterAuthenticationProvider;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/TwitterAuthenticationProvider;Lbolts/Task$TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/parse/TwitterAuthenticationProvider$2;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    iput-object p2, p0, Lcom/parse/TwitterAuthenticationProvider$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 97
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    new-instance v1, Lcom/parse/ParseException;

    invoke-direct {v1, p1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 102
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "authData"    # Lorg/json/JSONObject;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 92
    return-void
.end method
