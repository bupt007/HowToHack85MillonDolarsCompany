.class public Lcom/jheto/parsetestapplication/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jheto/parsetestapplication/MainActivity$IExist;
    }
.end annotation


# instance fields
.field private textViewData:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/jheto/parsetestapplication/MainActivity;->updateEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/jheto/parsetestapplication/MainActivity;->saveEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/jheto/parsetestapplication/MainActivity;->deleteEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jheto/parsetestapplication/MainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;Lcom/jheto/parsetestapplication/MainActivity$IExist;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/jheto/parsetestapplication/MainActivity;->existEmail(Ljava/lang/String;Lcom/jheto/parsetestapplication/MainActivity$IExist;)V

    return-void
.end method

.method static synthetic access$5(Lcom/jheto/parsetestapplication/MainActivity;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/jheto/parsetestapplication/MainActivity;->dumpEmails()V

    return-void
.end method

.method private deleteEmail(Ljava/lang/String;)V
    .locals 9
    .param p1, "emailToDelete"    # Ljava/lang/String;

    .prologue
    .line 150
    :try_start_0
    const-string v6, "VulnerableTable"

    invoke-static {v6}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v5

    .line 151
    .local v5, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    invoke-virtual {v5}, Lcom/parse/ParseQuery;->find()Ljava/util/List;

    move-result-object v0

    .line 152
    .local v0, "dumpTable":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 153
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 170
    .end local v0    # "dumpTable":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .end local v3    # "i":I
    .end local v5    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    :cond_0
    :goto_1
    return-void

    .line 154
    .restart local v0    # "dumpTable":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .restart local v3    # "i":I
    .restart local v5    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseObject;

    .line 155
    .local v4, "obj":Lcom/parse/ParseObject;
    const-string v6, "email"

    invoke-virtual {v4, v6}, Lcom/parse/ParseObject;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "email"

    invoke-virtual {v4, v6}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "email":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 157
    new-instance v6, Lcom/jheto/parsetestapplication/MainActivity$8;

    invoke-direct {v6, p0, p1}, Lcom/jheto/parsetestapplication/MainActivity$8;-><init>(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/parse/ParseObject;->deleteInBackground(Lcom/parse/DeleteCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    .end local v0    # "dumpTable":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "obj":Lcom/parse/ParseObject;
    .end local v5    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception DeleteEmail:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dumpTable":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .restart local v3    # "i":I
    .restart local v4    # "obj":Lcom/parse/ParseObject;
    .restart local v5    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    :cond_2
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 153
    .restart local v2    # "email":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private dumpEmails()V
    .locals 10

    .prologue
    .line 189
    :try_start_0
    const-string v7, "VulnerableTable"

    invoke-static {v7}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v6

    .line 190
    .local v6, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    invoke-virtual {v6}, Lcom/parse/ParseQuery;->find()Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "dumpTable":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 192
    const-string v0, ""

    .line 193
    .local v0, "dump":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 199
    iget-object v7, p0, Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Dump emails: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .end local v0    # "dump":Ljava/lang/String;
    .end local v1    # "dumpTable":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .end local v4    # "i":I
    .end local v6    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    :cond_0
    :goto_1
    return-void

    .line 194
    .restart local v0    # "dump":Ljava/lang/String;
    .restart local v1    # "dumpTable":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .restart local v4    # "i":I
    .restart local v6    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    .line 195
    .local v5, "obj":Lcom/parse/ParseObject;
    const-string v7, "email"

    invoke-virtual {v5, v7}, Lcom/parse/ParseObject;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "email"

    invoke-virtual {v5, v7}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "email":Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    .end local v3    # "email":Ljava/lang/String;
    :cond_3
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 201
    .end local v0    # "dump":Ljava/lang/String;
    .end local v1    # "dumpTable":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .end local v4    # "i":I
    .end local v5    # "obj":Lcom/parse/ParseObject;
    .end local v6    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception DumpEmails:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private existEmail(Ljava/lang/String;Lcom/jheto/parsetestapplication/MainActivity$IExist;)V
    .locals 5
    .param p1, "emailToCheck"    # Ljava/lang/String;
    .param p2, "iexist"    # Lcom/jheto/parsetestapplication/MainActivity$IExist;

    .prologue
    .line 118
    :try_start_0
    const-string v2, "VulnerableTable"

    invoke-static {v2}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    .line 119
    .local v1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    const-string v2, "email"

    invoke-virtual {v1, v2, p1}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 120
    new-instance v2, Lcom/jheto/parsetestapplication/MainActivity$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/jheto/parsetestapplication/MainActivity$7;-><init>(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;Lcom/jheto/parsetestapplication/MainActivity$IExist;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception ExistEmail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private saveEmail(Ljava/lang/String;)V
    .locals 5
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 174
    :try_start_0
    new-instance v1, Lcom/parse/ParseObject;

    const-string v2, "VulnerableTable"

    invoke-direct {v1, v2}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, "gameScore":Lcom/parse/ParseObject;
    const-string v2, "email"

    invoke-virtual {v1, v2, p1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    new-instance v2, Lcom/jheto/parsetestapplication/MainActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/jheto/parsetestapplication/MainActivity$9;-><init>(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->saveInBackground(Lcom/parse/SaveCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1    # "gameScore":Lcom/parse/ParseObject;
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception SaveEmail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEmail(Ljava/lang/String;)V
    .locals 5
    .param p1, "emailToUpdate"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    const-string v2, "VulnerableTable"

    invoke-static {v2}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    .line 97
    .local v1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    const-string v2, "email"

    invoke-virtual {v1, v2, p1}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 98
    new-instance v2, Lcom/jheto/parsetestapplication/MainActivity$6;

    invoke-direct {v2, p0, p1}, Lcom/jheto/parsetestapplication/MainActivity$6;-><init>(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1    # "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseObject;>;"
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception UpdateEmail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/high16 v6, 0x7f030000

    invoke-virtual {p0, v6}, Lcom/jheto/parsetestapplication/MainActivity;->setContentView(I)V

    .line 30
    const/high16 v6, 0x7f060000

    invoke-virtual {p0, v6}, Lcom/jheto/parsetestapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 31
    .local v5, "editTextEmail":Landroid/widget/EditText;
    const v6, 0x7f060004

    invoke-virtual {p0, v6}, Lcom/jheto/parsetestapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    .local v0, "buttonDeleteEmail":Landroid/widget/Button;
    const v6, 0x7f060001

    invoke-virtual {p0, v6}, Lcom/jheto/parsetestapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 33
    .local v2, "buttonExistEmail":Landroid/widget/Button;
    const v6, 0x7f060003

    invoke-virtual {p0, v6}, Lcom/jheto/parsetestapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 34
    .local v3, "buttonSaveEmail":Landroid/widget/Button;
    const v6, 0x7f060002

    invoke-virtual {p0, v6}, Lcom/jheto/parsetestapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 35
    .local v4, "buttonUpdateEmail":Landroid/widget/Button;
    const v6, 0x7f060005

    invoke-virtual {p0, v6}, Lcom/jheto/parsetestapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 36
    .local v1, "buttonDumpTable":Landroid/widget/Button;
    const v6, 0x7f060006

    invoke-virtual {p0, v6}, Lcom/jheto/parsetestapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;

    .line 38
    new-instance v6, Lcom/jheto/parsetestapplication/MainActivity$1;

    invoke-direct {v6, p0, v5}, Lcom/jheto/parsetestapplication/MainActivity$1;-><init>(Lcom/jheto/parsetestapplication/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v6, Lcom/jheto/parsetestapplication/MainActivity$2;

    invoke-direct {v6, p0, v5}, Lcom/jheto/parsetestapplication/MainActivity$2;-><init>(Lcom/jheto/parsetestapplication/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v6, Lcom/jheto/parsetestapplication/MainActivity$3;

    invoke-direct {v6, p0, v5}, Lcom/jheto/parsetestapplication/MainActivity$3;-><init>(Lcom/jheto/parsetestapplication/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v6, Lcom/jheto/parsetestapplication/MainActivity$4;

    invoke-direct {v6, p0, v5}, Lcom/jheto/parsetestapplication/MainActivity$4;-><init>(Lcom/jheto/parsetestapplication/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v6, Lcom/jheto/parsetestapplication/MainActivity$5;

    invoke-direct {v6, p0}, Lcom/jheto/parsetestapplication/MainActivity$5;-><init>(Lcom/jheto/parsetestapplication/MainActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method
