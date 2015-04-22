.class Lcom/jheto/parsetestapplication/MainActivity$4;
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

.field private final synthetic val$editTextEmail:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/jheto/parsetestapplication/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jheto/parsetestapplication/MainActivity$4;->this$0:Lcom/jheto/parsetestapplication/MainActivity;

    iput-object p2, p0, Lcom/jheto/parsetestapplication/MainActivity$4;->val$editTextEmail:Landroid/widget/EditText;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jheto/parsetestapplication/MainActivity$4;)Lcom/jheto/parsetestapplication/MainActivity;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jheto/parsetestapplication/MainActivity$4;->this$0:Lcom/jheto/parsetestapplication/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/jheto/parsetestapplication/MainActivity$4;->val$editTextEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "email":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/jheto/parsetestapplication/MainActivity$4;->this$0:Lcom/jheto/parsetestapplication/MainActivity;

    new-instance v2, Lcom/jheto/parsetestapplication/MainActivity$4$1;

    invoke-direct {v2, p0}, Lcom/jheto/parsetestapplication/MainActivity$4$1;-><init>(Lcom/jheto/parsetestapplication/MainActivity$4;)V

    # invokes: Lcom/jheto/parsetestapplication/MainActivity;->existEmail(Ljava/lang/String;Lcom/jheto/parsetestapplication/MainActivity$IExist;)V
    invoke-static {v1, v0, v2}, Lcom/jheto/parsetestapplication/MainActivity;->access$4(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;Lcom/jheto/parsetestapplication/MainActivity$IExist;)V

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/jheto/parsetestapplication/MainActivity$4;->this$0:Lcom/jheto/parsetestapplication/MainActivity;

    const-string v2, "Complete the email field"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
