package sun.net.ftp;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class FtpClient implements java.io.Closeable
{
	/**
	* Returns the default FTP port number.
	*
	* @return the port number.
	*/
	@:overload @:public @:static @:final public static function defaultPort() : Int;
	
	/**
	* Creates an instance of FtpClient. The client is not connected to any
	* server yet.
	*
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Creates an instance of {@code FtpClient}. The client is not connected to any
	* server yet.
	*
	* @return the created {@code FtpClient}
	*/
	@:overload @:public @:static public static function create() : sun.net.ftp.FtpClient;
	
	/**
	* Creates an instance of FtpClient and connects it to the specified
	* address.
	*
	* @param dest the {@code InetSocketAddress} to connect to.
	* @return The created {@code FtpClient}
	* @throws IOException if the connection fails
	* @see #connect(java.net.SocketAddress)
	*/
	@:overload @:public @:static public static function create(dest : java.net.InetSocketAddress) : sun.net.ftp.FtpClient;
	
	/**
	* Creates an instance of {@code FtpClient} and connects it to the
	* specified host on the default FTP port.
	*
	* @param dest the {@code String} containing the name of the host
	*        to connect to.
	* @return The created {@code FtpClient}
	* @throws IOException if the connection fails.
	* @throws FtpProtocolException if the server rejected the connection
	*/
	@:overload @:public @:static public static function create(dest : String) : sun.net.ftp.FtpClient;
	
	/**
	* Enables, or disables, the use of the <I>passive</I> mode. In that mode,
	* data connections are established by having the client connect to the server.
	* This is the recommended default mode as it will work best through
	* firewalls and NATs. If set to {@code false} the mode is said to be
	* <I>active</I> which means the server will connect back to the client
	* after a PORT command to establish a data connection.
	*
	* <p><b>Note:</b> Since the passive mode might not be supported by all
	* FTP servers, enabling it means the client will try to use it. If the
	* server rejects it, then the client will attempt to fall back to using
	* the <I>active</I> mode by issuing a {@code PORT} command instead.</p>
	*
	* @param passive {@code true} to force passive mode.
	* @return This FtpClient
	* @see #isPassiveModeEnabled()
	*/
	@:overload @:public @:abstract public function enablePassiveMode(passive : Bool) : sun.net.ftp.FtpClient;
	
	/**
	* Tests whether passive mode is enabled.
	*
	* @return {@code true} if the passive mode has been enabled.
	* @see #enablePassiveMode(boolean)
	*/
	@:overload @:public @:abstract public function isPassiveModeEnabled() : Bool;
	
	/**
	* Sets the default timeout value to use when connecting to the server,
	*
	* @param timeout the timeout value, in milliseconds, to use for the connect
	*        operation. A value of zero or less, means use the default timeout.
	*
	* @return This FtpClient
	*/
	@:overload @:public @:abstract public function setConnectTimeout(timeout : Int) : sun.net.ftp.FtpClient;
	
	/**
	* Returns the current default connection timeout value.
	*
	* @return the value, in milliseconds, of the current connect timeout.
	* @see #setConnectTimeout(int)
	*/
	@:overload @:public @:abstract public function getConnectTimeout() : Int;
	
	/**
	* Sets the timeout value to use when reading from the server,
	*
	* @param timeout the timeout value, in milliseconds, to use for the read
	*        operation. A value of zero or less, means use the default timeout.
	* @return This FtpClient
	*/
	@:overload @:public @:abstract public function setReadTimeout(timeout : Int) : sun.net.ftp.FtpClient;
	
	/**
	* Returns the current read timeout value.
	*
	* @return the value, in milliseconds, of the current read timeout.
	* @see #setReadTimeout(int)
	*/
	@:overload @:public @:abstract public function getReadTimeout() : Int;
	
	/**
	* Set the {@code Proxy} to be used for the next connection.
	* If the client is already connected, it doesn't affect the current
	* connection. However it is not recommended to change this during a session.
	*
	* @param p the {@code Proxy} to use, or {@code null} for no proxy.
	* @return This FtpClient
	*/
	@:overload @:public @:abstract public function setProxy(p : java.net.Proxy) : sun.net.ftp.FtpClient;
	
	/**
	* Get the proxy of this FtpClient
	*
	* @return the {@code Proxy}, this client is using, or {@code null}
	* if none is used.
	* @see #setProxy(Proxy)
	*/
	@:overload @:public @:abstract public function getProxy() : java.net.Proxy;
	
	/**
	* Tests whether this client is connected or not to a server.
	*
	* @return {@code true} if the client is connected.
	*/
	@:overload @:public @:abstract public function isConnected() : Bool;
	
	/**
	* Connects the {@code FtpClient} to the specified destination server.
	*
	* @param dest the address of the destination server
	* @return this FtpClient
	* @throws IOException if connection failed.
	* @throws SecurityException if there is a SecurityManager installed and it
	* denied the authorization to connect to the destination.
	* @throws FtpProtocolException
	*/
	@:overload @:public @:abstract public function connect(dest : java.net.SocketAddress) : sun.net.ftp.FtpClient;
	
	/**
	* Connects the FtpClient to the specified destination server.
	*
	* @param dest the address of the destination server
	* @param timeout the value, in milliseconds, to use as a connection timeout
	* @return this FtpClient
	* @throws IOException if connection failed.
	* @throws SecurityException if there is a SecurityManager installed and it
	* denied the authorization to connect to the destination.
	* @throws FtpProtocolException
	*/
	@:overload @:public @:abstract public function connect(dest : java.net.SocketAddress, timeout : Int) : sun.net.ftp.FtpClient;
	
	/**
	* Retrieves the address of the FTP server this client is connected to.
	*
	* @return the {@link SocketAddress} of the server, or {@code null} if this
	* client is not connected yet.
	*/
	@:overload @:public @:abstract public function getServerAddress() : java.net.SocketAddress;
	
	/**
	* Attempts to log on the server with the specified user name and password.
	*
	* @param user The user name
	* @param password The password for that user
	* @return this FtpClient
	* @throws IOException if an error occured during the transmission
	* @throws FtpProtocolException if the login was refused by the server
	*/
	@:overload @:public @:abstract public function login(user : String, password : java.NativeArray<java.StdTypes.Char16>) : sun.net.ftp.FtpClient;
	
	/**
	* Attempts to log on the server with the specified user name, password and
	* account name.
	*
	* @param user The user name
	* @param password The password for that user.
	* @param account The account name for that user.
	* @return this FtpClient
	* @throws IOException if an error occurs during the transmission.
	* @throws FtpProtocolException if the login was refused by the server
	*/
	@:overload @:public @:abstract public function login(user : String, password : java.NativeArray<java.StdTypes.Char16>, account : String) : sun.net.ftp.FtpClient;
	
	/**
	* Closes the current connection. Logs out the current user, if any, by
	* issuing the QUIT command to the server.
	* This is in effect terminates the current
	* session and the connection to the server will be closed.
	* <p>After a close, the client can then be connected to another server
	* to start an entirely different session.</P>
	*
	* @throws IOException if an error occurs during transmission
	*/
	@:overload @:public @:abstract public function close() : Void;
	
	/**
	* Checks whether the client is logged in to the server or not.
	*
	* @return {@code true} if the client has already completed a login.
	*/
	@:overload @:public @:abstract public function isLoggedIn() : Bool;
	
	/**
	* Changes to a specific directory on a remote FTP server
	*
	* @param  remoteDirectory path of the directory to CD to.
	* @return this FtpClient
	* @throws IOException if an error occurs during the transmission.
	* @throws FtpProtocolException if the command was refused by the server
	*/
	@:overload @:public @:abstract public function changeDirectory(remoteDirectory : String) : sun.net.ftp.FtpClient;
	
	/**
	* Changes to the parent directory, sending the CDUP command to the server.
	*
	* @return this FtpClient
	* @throws IOException if an error occurs during the transmission.
	* @throws FtpProtocolException if the command was refused by the server
	*/
	@:overload @:public @:abstract public function changeToParentDirectory() : sun.net.ftp.FtpClient;
	
	/**
	* Retrieve the server current working directory using the PWD command.
	*
	* @return a {@code String} containing the current working directory
	* @throws IOException if an error occurs during transmission
	* @throws FtpProtocolException if the command was refused by the server,
	*/
	@:overload @:public @:abstract public function getWorkingDirectory() : String;
	
	/**
	* Sets the restart offset to the specified value.  That value will be
	* sent through a {@code REST} command to server before the next file
	* transfer and has the effect of resuming a file transfer from the
	* specified point. After the transfer the restart offset is set back to
	* zero.
	*
	* @param offset the offset in the remote file at which to start the next
	*        transfer. This must be a value greater than or equal to zero.
	* @return this FtpClient
	* @throws IllegalArgumentException if the offset is negative.
	*/
	@:overload @:public @:abstract public function setRestartOffset(offset : haxe.Int64) : sun.net.ftp.FtpClient;
	
	/**
	* Retrieves a file from the ftp server and writes its content to the specified
	* {@code OutputStream}.
	* <p>If the restart offset was set, then a {@code REST} command will be
	* sent before the {@code RETR} in order to restart the tranfer from the specified
	* offset.</p>
	* <p>The {@code OutputStream} is not closed by this method at the end
	* of the transfer. </p>
	* <p>This method will block until the transfer is complete or an exception
	* is thrown.</p>
	*
	* @param name a {@code String} containing the name of the file to
	*        retreive from the server.
	* @param local the {@code OutputStream} the file should be written to.
	* @return this FtpClient
	* @throws IOException if the transfer fails.
	* @throws FtpProtocolException if the command was refused by the server
	* @see #setRestartOffset(long)
	*/
	@:overload @:public @:abstract public function getFile(name : String, local : java.io.OutputStream) : sun.net.ftp.FtpClient;
	
	/**
	* Retrieves a file from the ftp server, using the {@code RETR} command, and
	* returns the InputStream from the established data connection.
	* {@link #completePending()} <b>has</b> to be called once the application
	* is done reading from the returned stream.
	* <p>If the restart offset was set, then a {@code REST} command will be
	* sent before the {@code RETR} in order to restart the tranfer from the specified
	* offset.</p>
	*
	* @param name the name of the remote file
	* @return the {@link java.io.InputStream} from the data connection
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was refused by the server
	* @see #setRestartOffset(long)
	*/
	@:overload @:public @:abstract public function getFileStream(name : String) : java.io.InputStream;
	
	/**
	* Transfers a file from the client to the server (aka a <I>put</I>)
	* by sending the STOR command, and returns the {@code OutputStream}
	* from the established data connection.
	*
	* A new file is created at the server site if the file specified does
	* not already exist.
	*
	* {@link #completePending()} <b>has</b> to be called once the application
	* is finished writing to the returned stream.
	*
	* @param name the name of the remote file to write.
	* @return the {@link java.io.OutputStream} from the data connection or
	*         {@code null} if the command was unsuccessful.
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public public function putFileStream(name : String) : java.io.OutputStream;
	
	/**
	* Transfers a file from the client to the server (aka a <I>put</I>)
	* by sending the STOR or STOU command, depending on the
	* {@code unique} argument, and returns the {@code OutputStream}
	* from the established data connection.
	* {@link #completePending()} <b>has</b> to be called once the application
	* is finished writing to the stream.
	*
	* A new file is created at the server site if the file specified does
	* not already exist.
	*
	* If {@code unique} is set to {@code true}, the resultant file
	* is to be created under a name unique to that directory, meaning
	* it will not overwrite an existing file, instead the server will
	* generate a new, unique, file name.
	* The name of the remote file can be retrieved, after completion of the
	* transfer, by calling {@link #getLastFileName()}.
	*
	* @param name the name of the remote file to write.
	* @param unique {@code true} if the remote files should be unique,
	*        in which case the STOU command will be used.
	* @return the {@link java.io.OutputStream} from the data connection.
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function putFileStream(name : String, unique : Bool) : java.io.OutputStream;
	
	/**
	* Transfers a file from the client to the server (aka a <I>put</I>)
	* by sending the STOR or STOU command, depending on the
	* {@code unique} argument. The content of the {@code InputStream}
	* passed in argument is written into the remote file, overwriting any
	* existing data.
	*
	* A new file is created at the server site if the file specified does
	* not already exist.
	*
	* If {@code unique} is set to {@code true}, the resultant file
	* is to be created under a name unique to that directory, meaning
	* it will not overwrite an existing file, instead the server will
	* generate a new, unique, file name.
	* The name of the remote file can be retrieved, after completion of the
	* transfer, by calling {@link #getLastFileName()}.
	*
	* <p>This method will block until the transfer is complete or an exception
	* is thrown.</p>
	*
	* @param name the name of the remote file to write.
	* @param local the {@code InputStream} that points to the data to
	*        transfer.
	* @return this FtpClient
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public public function putFile(name : String, local : java.io.InputStream) : sun.net.ftp.FtpClient;
	
	/**
	* Transfers a file from the client to the server (aka a <I>put</I>)
	* by sending the STOR command. The content of the {@code InputStream}
	* passed in argument is written into the remote file, overwriting any
	* existing data.
	*
	* A new file is created at the server site if the file specified does
	* not already exist.
	*
	* <p>This method will block until the transfer is complete or an exception
	* is thrown.</p>
	*
	* @param name the name of the remote file to write.
	* @param local the {@code InputStream} that points to the data to
	*        transfer.
	* @param unique {@code true} if the remote file should be unique
	*        (i.e. not already existing), {@code false} otherwise.
	* @return this FtpClient
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	* @see #getLastFileName()
	*/
	@:overload @:public @:abstract public function putFile(name : String, local : java.io.InputStream, unique : Bool) : sun.net.ftp.FtpClient;
	
	/**
	* Sends the APPE command to the server in order to transfer a data stream
	* passed in argument and append it to the content of the specified remote
	* file.
	*
	* <p>This method will block until the transfer is complete or an exception
	* is thrown.</p>
	*
	* @param name A {@code String} containing the name of the remote file
	*        to append to.
	* @param local The {@code InputStream} providing access to the data
	*        to be appended.
	* @return this FtpClient
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function appendFile(name : String, local : java.io.InputStream) : sun.net.ftp.FtpClient;
	
	/**
	* Renames a file on the server.
	*
	* @param from the name of the file being renamed
	* @param to the new name for the file
	* @return this FtpClient
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function rename(from : String, to : String) : sun.net.ftp.FtpClient;
	
	/**
	* Deletes a file on the server.
	*
	* @param name a {@code String} containing the name of the file
	*        to delete.
	* @return this FtpClient
	* @throws IOException if an error occured during the exchange
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function deleteFile(name : String) : sun.net.ftp.FtpClient;
	
	/**
	* Creates a new directory on the server.
	*
	* @param name a {@code String} containing the name of the directory
	*        to create.
	* @return this FtpClient
	* @throws IOException if an error occured during the exchange
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function makeDirectory(name : String) : sun.net.ftp.FtpClient;
	
	/**
	* Removes a directory on the server.
	*
	* @param name a {@code String} containing the name of the directory
	*        to remove.
	*
	* @return this FtpClient
	* @throws IOException if an error occured during the exchange.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function removeDirectory(name : String) : sun.net.ftp.FtpClient;
	
	/**
	* Sends a No-operation command. It's useful for testing the connection
	* status or as a <I>keep alive</I> mechanism.
	*
	* @return this FtpClient
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function noop() : sun.net.ftp.FtpClient;
	
	/**
	* Sends the {@code STAT} command to the server.
	* This can be used while a data connection is open to get a status
	* on the current transfer, in that case the parameter should be
	* {@code null}.
	* If used between file transfers, it may have a pathname as argument
	* in which case it will work as the LIST command except no data
	* connection will be created.
	*
	* @param name an optional {@code String} containing the pathname
	*        the STAT command should apply to.
	* @return the response from the server
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function getStatus(name : String) : String;
	
	/**
	* Sends the {@code FEAT} command to the server and returns the list of supported
	* features in the form of strings.
	*
	* The features are the supported commands, like AUTH TLS, PROT or PASV.
	* See the RFCs for a complete list.
	*
	* Note that not all FTP servers support that command, in which case
	* a {@link FtpProtocolException} will be thrown.
	*
	* @return a {@code List} of {@code Strings} describing the
	*         supported additional features
	* @throws IOException if an error occurs during the transmission.
	* @throws FtpProtocolException if the command is rejected by the server
	*/
	@:overload @:public @:abstract public function getFeatures() : java.util.List<String>;
	
	/**
	* Sends the {@code ABOR} command to the server.
	* <p>It tells the server to stop the previous command or transfer. No action
	* will be taken if the previous command has already been completed.</p>
	* <p>This doesn't abort the current session, more commands can be issued
	* after an abort.</p>
	*
	* @return this FtpClient
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function abort() : sun.net.ftp.FtpClient;
	
	/**
	* Some methods do not wait until completion before returning, so this
	* method can be called to wait until completion. This is typically the case
	* with commands that trigger a transfer like {@link #getFileStream(String)}.
	* So this method should be called before accessing information related to
	* such a command.
	* <p>This method will actually block reading on the command channel for a
	* notification from the server that the command is finished. Such a
	* notification often carries extra information concerning the completion
	* of the pending action (e.g. number of bytes transfered).</p>
	* <p>Note that this will return immediately if no command or action
	* is pending</p>
	* <p>It should be also noted that most methods issuing commands to the ftp
	* server will call this method if a previous command is pending.
	* <p>Example of use:
	* <pre>
	* InputStream in = cl.getFileStream("file");
	* ...
	* cl.completePending();
	* long size = cl.getLastTransferSize();
	* </pre>
	* On the other hand, it's not necessary in a case like:
	* <pre>
	* InputStream in = cl.getFileStream("file");
	* // read content
	* ...
	* cl.close();
	* </pre>
	* <p>Since {@link #close()} will call completePending() if necessary.</p>
	* @return this FtpClient
	* @throws IOException if an error occured during the transfer
	* @throws FtpProtocolException if the command didn't complete successfully
	*/
	@:overload @:public @:abstract public function completePending() : sun.net.ftp.FtpClient;
	
	/**
	* Reinitializes the USER parameters on the FTP server
	*
	* @return this FtpClient
	* @throws IOException if an error occurs during transmission
	* @throws FtpProtocolException if the command fails
	*/
	@:overload @:public @:abstract public function reInit() : sun.net.ftp.FtpClient;
	
	/**
	* Changes the transfer type (binary, ascii, ebcdic) and issue the
	* proper command (e.g. TYPE A) to the server.
	*
	* @param type the {@code TransferType} to use.
	* @return This FtpClient
	* @throws IOException if an error occurs during transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function setType(type : sun.net.ftp.FtpClient.FtpClient_TransferType) : sun.net.ftp.FtpClient;
	
	/**
	* Changes the current transfer type to binary.
	* This is a convenience method that is equivalent to
	* {@code setType(TransferType.BINARY)}
	*
	* @return This FtpClient
	* @throws IOException if an error occurs during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	* @see #setType(TransferType)
	*/
	@:overload @:public public function setBinaryType() : sun.net.ftp.FtpClient;
	
	/**
	* Changes the current transfer type to ascii.
	* This is a convenience method that is equivalent to
	* {@code setType(TransferType.ASCII)}
	*
	* @return This FtpClient
	* @throws IOException if an error occurs during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	* @see #setType(TransferType)
	*/
	@:overload @:public public function setAsciiType() : sun.net.ftp.FtpClient;
	
	/**
	* Issues a {@code LIST} command to the server to get the current directory
	* listing, and returns the InputStream from the data connection.
	*
	* <p>{@link #completePending()} <b>has</b> to be called once the application
	* is finished reading from the stream.</p>
	*
	* @param path the pathname of the directory to list, or {@code null}
	*        for the current working directory.
	* @return the {@code InputStream} from the resulting data connection
	* @throws IOException if an error occurs during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	* @see #changeDirectory(String)
	* @see #listFiles(String)
	*/
	@:overload @:public @:abstract public function list(path : String) : java.io.InputStream;
	
	/**
	* Issues a {@code NLST path} command to server to get the specified directory
	* content. It differs from {@link #list(String)} method by the fact that
	* it will only list the file names which would make the parsing of the
	* somewhat easier.
	*
	* <p>{@link #completePending()} <b>has</b> to be called once the application
	* is finished reading from the stream.</p>
	*
	* @param path a {@code String} containing the pathname of the
	*        directory to list or {@code null} for the current working directory.
	* @return the {@code InputStream} from the resulting data connection
	* @throws IOException if an error occurs during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function nameList(path : String) : java.io.InputStream;
	
	/**
	* Issues the {@code SIZE [path]} command to the server to get the size of a
	* specific file on the server.
	* Note that this command may not be supported by the server. In which
	* case -1 will be returned.
	*
	* @param path a {@code String} containing the pathname of the
	*        file.
	* @return a {@code long} containing the size of the file or -1 if
	*         the server returned an error, which can be checked with
	*         {@link #getLastReplyCode()}.
	* @throws IOException if an error occurs during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function getSize(path : String) : haxe.Int64;
	
	/**
	* Issues the {@code MDTM [path]} command to the server to get the modification
	* time of a specific file on the server.
	* Note that this command may not be supported by the server, in which
	* case {@code null} will be returned.
	*
	* @param path a {@code String} containing the pathname of the file.
	* @return a {@code Date} representing the last modification time
	*         or {@code null} if the server returned an error, which
	*         can be checked with {@link #getLastReplyCode()}.
	* @throws IOException if an error occurs during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function getLastModified(path : String) : java.util.Date;
	
	/**
	* Sets the parser used to handle the directory output to the specified
	* one. By default the parser is set to one that can handle most FTP
	* servers output (Unix base mostly). However it may be necessary for
	* and application to provide its own parser due to some uncommon
	* output format.
	*
	* @param p The {@code FtpDirParser} to use.
	* @return this FtpClient
	* @see #listFiles(String)
	*/
	@:overload @:public @:abstract public function setDirParser(p : sun.net.ftp.FtpDirParser) : sun.net.ftp.FtpClient;
	
	/**
	* Issues a {@code MLSD} command to the server to get the specified directory
	* listing and applies the internal parser to create an Iterator of
	* {@link java.net.FtpDirEntry}. Note that the Iterator returned is also a
	* {@link java.io.Closeable}.
	* <p>If the server doesn't support the MLSD command, the LIST command is used
	* instead and the parser set by {@link #setDirParser(java.net.FtpDirParser) }
	* is used instead.</p>
	*
	* {@link #completePending()} <b>has</b> to be called once the application
	* is finished iterating through the files.
	*
	* @param path the pathname of the directory to list or {@code null}
	*        for the current working directoty.
	* @return a {@code Iterator} of files or {@code null} if the
	*         command failed.
	* @throws IOException if an error occured during the transmission
	* @see #setDirParser(FtpDirParser)
	* @see #changeDirectory(String)
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function listFiles(path : String) : java.util.Iterator<sun.net.ftp.FtpDirEntry>;
	
	/**
	* Attempts to use Kerberos GSSAPI as an authentication mechanism with the
	* ftp server. This will issue an {@code AUTH GSSAPI} command, and if
	* it is accepted by the server, will followup with {@code ADAT}
	* command to exchange the various tokens until authentication is
	* successful. This conforms to Appendix I of RFC 2228.
	*
	* @return this FtpClient
	* @throws IOException if an error occurs during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function useKerberos() : sun.net.ftp.FtpClient;
	
	/**
	* Returns the Welcome string the server sent during initial connection.
	*
	* @return a {@code String} containing the message the server
	*         returned during connection or {@code null}.
	*/
	@:overload @:public @:abstract public function getWelcomeMsg() : String;
	
	/**
	* Returns the last reply code sent by the server.
	*
	* @return the lastReplyCode or {@code null} if none were received yet.
	*/
	@:overload @:public @:abstract public function getLastReplyCode() : sun.net.ftp.FtpReplyCode;
	
	/**
	* Returns the last response string sent by the server.
	*
	* @return the message string, which can be quite long, last returned
	*         by the server, or {@code null} if no response were received yet.
	*/
	@:overload @:public @:abstract public function getLastResponseString() : String;
	
	/**
	* Returns, when available, the size of the latest started transfer.
	* This is retreived by parsing the response string received as an initial
	* response to a {@code RETR} or similar request.
	*
	* @return the size of the latest transfer or -1 if either there was no
	*         transfer or the information was unavailable.
	*/
	@:overload @:public @:abstract public function getLastTransferSize() : haxe.Int64;
	
	/**
	* Returns, when available, the remote name of the last transfered file.
	* This is mainly useful for "put" operation when the unique flag was
	* set since it allows to recover the unique file name created on the
	* server which may be different from the one submitted with the command.
	*
	* @return the name the latest transfered file remote name, or
	*         {@code null} if that information is unavailable.
	*/
	@:overload @:public @:abstract public function getLastFileName() : String;
	
	/**
	* Attempts to switch to a secure, encrypted connection. This is done by
	* sending the {@code AUTH TLS} command.
	* <p>See <a href="http://www.ietf.org/rfc/rfc4217.txt">RFC 4217</a></p>
	* If successful this will establish a secure command channel with the
	* server, it will also make it so that all other transfers (e.g. a RETR
	* command) will be done over an encrypted channel as well unless a
	* {@link #reInit()} command or a {@link #endSecureSession()} command is issued.
	* <p>This method should be called after a successful {@link #connect(java.net.InetSocketAddress) }
	* but before calling {@link #login(java.lang.String, char[]) }.</p>
	*
	* @return this FtpCLient
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	* @see #endSecureSession()
	*/
	@:overload @:public @:abstract public function startSecureSession() : sun.net.ftp.FtpClient;
	
	/**
	* Sends a {@code CCC} command followed by a {@code PROT C}
	* command to the server terminating an encrypted session and reverting
	* back to a non encrypted transmission.
	*
	* @return this FtpClient
	* @throws IOException if an error occured during transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	* @see #startSecureSession()
	*/
	@:overload @:public @:abstract public function endSecureSession() : sun.net.ftp.FtpClient;
	
	/**
	* Sends the "Allocate" ({@code ALLO}) command to the server telling it to
	* pre-allocate the specified number of bytes for the next transfer.
	*
	* @param size The number of bytes to allocate.
	* @return this FtpClient
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function allocate(size : haxe.Int64) : sun.net.ftp.FtpClient;
	
	/**
	* Sends the "Structure Mount" ({@code SMNT}) command to the server. This let the
	* user mount a different file system data structure without altering his
	* login or accounting information.
	*
	* @param struct a {@code String} containing the name of the
	*        structure to mount.
	* @return this FtpClient
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function structureMount(struct : String) : sun.net.ftp.FtpClient;
	
	/**
	* Sends a System ({@code SYST}) command to the server and returns the String
	* sent back by the server describing the operating system at the
	* server.
	*
	* @return a {@code String} describing the OS, or {@code null}
	*         if the operation was not successful.
	* @throws IOException if an error occured during the transmission.
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function getSystem() : String;
	
	/**
	* Sends the {@code HELP} command to the server, with an optional command, like
	* SITE, and returns the text sent back by the server.
	*
	* @param cmd the command for which the help is requested or
	*        {@code null} for the general help
	* @return a {@code String} containing the text sent back by the
	*         server, or {@code null} if the command failed.
	* @throws IOException if an error occured during transmission
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function getHelp(cmd : String) : String;
	
	/**
	* Sends the {@code SITE} command to the server. This is used by the server
	* to provide services specific to his system that are essential
	* to file transfer.
	*
	* @param cmd the command to be sent.
	* @return this FtpClient
	* @throws IOException if an error occured during transmission
	* @throws FtpProtocolException if the command was rejected by the server
	*/
	@:overload @:public @:abstract public function siteCmd(cmd : String) : sun.net.ftp.FtpClient;
	
	
}
@:native('sun$net$ftp$FtpClient$TransferType') extern enum FtpClient_TransferType
{
	ASCII;
	BINARY;
	EBCDIC;
	
}

