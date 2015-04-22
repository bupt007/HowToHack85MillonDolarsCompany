.class Lcom/jheto/parsetestapplication/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/jheto/parsetestapplication/MainActivity$IExist;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jheto/parsetestapplication/MainActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jheto/parsetestapplication/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/jheto/parsetestapplication/MainActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jheto/parsetestapplication/MainActivity$4$1;->this$1:Lcom/jheto/parsetestapplication/MainActivity$4;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exist(Z)V
    .locals 3
    .param p1, "response"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jheto/parsetestapplication/MainActivity$4$1;->this$1:Lcom/jheto/parsetestapplication/MainActivity$4;

    # getter for: Lcom/jheto/parsetestapplication/MainActivity$4;->this$0:Lcom/jheto/parsetestapplication/MainActivity;
    invoke-static {v0}, Lcom/jheto/parsetestapplication/MainActivity$4;->access$0(Lcom/jheto/parsetestapplication/MainActivity$4;)Lcom/jheto/parsetestapplication/MainActivity;

    move-result-object v0

    # getter for: Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jheto/parsetestapplication/MainActivity;->access$3(Lcom/jheto/parsetestapplication/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exist email: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
