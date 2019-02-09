.class public Lcom/example/cjh/hellojni/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "hellojni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
	
    const-string v0, "InlineArmHook"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v2, 0x7f04001b

    invoke-virtual {p0, v2}, Lcom/example/cjh/hellojni/MainActivity;->setContentView(I)V

    .line 23
    const v2, 0x7f0b0057

    invoke-virtual {p0, v2}, Lcom/example/cjh/hellojni/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 24
    .local v1, "tv":Landroid/widget/TextView;
    const-string v2, "good"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    const v2, 0x7f0b0058

    invoke-virtual {p0, v2}, Lcom/example/cjh/hellojni/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 26
    .local v0, "btn":Landroid/widget/Button;
    new-instance v2, Lcom/example/cjh/hellojni/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/example/cjh/hellojni/MainActivity$1;-><init>(Lcom/example/cjh/hellojni/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
