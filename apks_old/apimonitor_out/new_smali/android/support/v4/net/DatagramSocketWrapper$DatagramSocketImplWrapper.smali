.class  Landroid/support/v4/net/DatagramSocketWrapper$DatagramSocketImplWrapper;
.super Ljava/net/SocketImpl;
.source "DatagramSocketWrapper.java"
.method public constructor <init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V
.registers 4
invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V
invoke-virtual {p1}, Ljava/net/DatagramSocket;->getLocalPort()I
move-result v0
iput v0, p0, Landroid/support/v4/net/DatagramSocketWrapper$DatagramSocketImplWrapper;->localport:I
iput-object p2, p0, Landroid/support/v4/net/DatagramSocketWrapper$DatagramSocketImplWrapper;->fd:Ljava/io/FileDescriptor;
return-void
.end method
.method protected accept(Ljava/net/SocketImpl;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected available()I
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected bind(Ljava/net/InetAddress;I)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected close()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected connect(Ljava/lang/String;I)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected connect(Ljava/net/InetAddress;I)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected connect(Ljava/net/SocketAddress;I)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected create(Z)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected getInputStream()Ljava/io/InputStream;
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public getOption(I)Ljava/lang/Object;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected getOutputStream()Ljava/io/OutputStream;
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected listen(I)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected sendUrgentData(I)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public setOption(ILjava/lang/Object;)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method