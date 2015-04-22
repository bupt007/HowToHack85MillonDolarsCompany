.class Lcom/jheto/parsetestapplication/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jheto/parsetestapplication/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jheto/parsetestapplication/MainActivity;


# direct methods
.method constructor <init>(Lcom/jheto/parsetestapplication/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jheto/parsetestapplication/MainActivity$5;->this$0:Lcom/jheto/parsetestapplication/MainActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jheto/parsetestapplication/MainActivity$5;->this$0:Lcom/jheto/parsetestapplication/MainActivity;

    # invokes: Lcom/jheto/parsetestapplication/MainActivity;->dumpEmails()V
    invoke-static {v0}, Lcom/jheto/parsetestapplication/MainActivity;->access$5(Lcom/jheto/parsetestapplication/MainActivity;)V

    .line 83
    return-void
.end method
