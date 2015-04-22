.class Lcom/jheto/parsetestapplication/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jheto/parsetestapplication/MainActivity;->saveEmail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jheto/parsetestapplication/MainActivity;

.field private final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jheto/parsetestapplication/MainActivity$9;->this$0:Lcom/jheto/parsetestapplication/MainActivity;

    iput-object p2, p0, Lcom/jheto/parsetestapplication/MainActivity$9;->val$email:Ljava/lang/String;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 3
    .param p1, "arg0"    # Lcom/parse/ParseException;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jheto/parsetestapplication/MainActivity$9;->this$0:Lcom/jheto/parsetestapplication/MainActivity;

    # getter for: Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jheto/parsetestapplication/MainActivity;->access$3(Lcom/jheto/parsetestapplication/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saved Email:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jheto/parsetestapplication/MainActivity$9;->val$email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/jheto/parsetestapplication/MainActivity$9;->done(Lcom/parse/ParseException;)V

    return-void
.end method
