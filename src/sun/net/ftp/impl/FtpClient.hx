package sun.net.ftp.impl;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class FtpClient extends sun.net.ftp.FtpClient
{
	/**
	* Creates an instance of FtpClient. The client is not connected to any
	* server yet.
	*
	*/
	@:overload override private function new() : Void;
	
	/**
	* Creates an instance of FtpClient. The client is not connected to any
	* server yet.
	*
	*/
	@:overload public static function create() : sun.net.ftp.FtpClient;
	
	/**
	* Set the transfer mode to <I>passive</I>. In that mode, data connections
	* are established by having the client connect to the server.
	* This is the recommended default mode as it will work best through
	* firewalls and NATs.
	*
	* @return This FtpClient
	* @see #setActiveMode()
	*/
	@:overload override public function enablePassiveMode(passive : Bool) : sun.net.ftp.FtpClient;
	
	/**
	* Gets the current transfer mode.
	*
	* @return the current <code>FtpTransferMode</code>
	*/
	@:overload override public function isPassiveModeEnabled() : Bool;
	
	/**
	* Sets the timeout value to use when connecting to the server,
	*
	* @param timeout the timeout value, in milliseconds, to use for the connect
	*        operation. A value of zero or less, means use the default timeout.
	*
	* @return This FtpClient
	*/
	@:overload override public function setConnectTimeout(timeout : Int) : sun.net.ftp.FtpClient;
	
	/**
	* Returns the current connection timeout value.
	*
	* @return the value, in milliseconds, of the current connect timeout.
	* @see #setConnectTimeout(int)
	*/
	@:overload override public function getConnectTimeout() : Int;
	
	/**
	* Sets the timeout value to use when reading from the server,
	*
	* @param timeout the timeout value, in milliseconds, to use for the read
	*        operation. A value of zero or less, means use the default timeout.
	* @return This FtpClient
	*/
	@:overload override public function setReadTimeout(timeout : Int) : sun.net.ftp.FtpClient;
	
	/**
	* Returns the current read timeout value.
	*
	* @return the value, in milliseconds, of the current read timeout.
	* @see #setReadTimeout(int)
	*/
	@:overload override public function getReadTimeout() : Int;
	
	@:overload override public function setProxy(p : java.net.Proxy) : sun.net.ftp.FtpClient;
	
	/**
	* Get the proxy of this FtpClient
	*
	* @return the <code>Proxy</code>, this client is using, or <code>null</code>
	*         if none is used.
	* @see #setProxy(Proxy)
	*/
	@:overload override public function getProxy() : java.net.Proxy;
	
	/**
	* Tests whether this client is connected or not to a server.
	*
	* @return <code>true</code> if the client is connected.
	*/
	@:overload override public function isConnected() : Bool;
	
	@:overload override public function getServerAddress() : java.net.SocketAddress;
	
	@:overload override public function connect(dest : java.net.SocketAddress) : sun.net.ftp.FtpClient;
	
	/**
	* Connects the FtpClient to the specified destination.
	*
	* @param dest the address of the destination server
	* @throws IOException if connection failed.
	*/
	@:overload override public function connect(dest : java.net.SocketAddress, timeout : Int) : sun.net.ftp.FtpClient;
	
	/**
	* Attempts to log on the server with the specified user name and password.
	*
	* @param user The user name
	* @param password The password for that user
	* @return <code>true</code> if the login was successful.
	* @throws IOException if an error occured during the transmission
	*/
	@:overload override public function login(user : String, password : java.NativeArray<java.StdTypes.Char16>) : sun.net.ftp.FtpClient;
	
	/**
	* Attempts to log on the server with the specified user name, password and
	* account name.
	*
	* @param user The user name
	* @param password The password for that user.
	* @param account The account name for that user.
	* @return <code>true</code> if the login was successful.
	* @throws IOException if an error occurs during the transmission.
	*/
	@:overload override public function login(user : String, password : java.NativeArray<java.StdTypes.Char16>, account : String) : sun.net.ftp.FtpClient;
	
	/**
	* Logs out the current user. This is in effect terminates the current
	* session and the connection to the server will be closed.
	*
	*/
	@:overload override public function close() : Void;
	
	/**
	* Checks whether the client is logged in to the server or not.
	*
	* @return <code>true</code> if the client has already completed a login.
	*/
	@:overload override public function isLoggedIn() : Bool;
	
	/**
	* Changes to a specific directory on a remote FTP server
	*
	* @param remoteDirectory path of the directory to CD to.
	* @return <code>true</code> if the operation was successful.
	* @exception <code>FtpProtocolException</code>
	*/
	@:overload override public function changeDirectory(remoteDirectory : String) : sun.net.ftp.FtpClient;
	
	/**
	* Changes to the parent directory, sending the CDUP command to the server.
	*
	* @return <code>true</code> if the command was successful.
	* @throws IOException
	*/
	@:overload override public function changeToParentDirectory() : sun.net.ftp.FtpClient;
	
	/**
	* Returns the server current working directory, or <code>null</code> if
	* the PWD command failed.
	*
	* @return a <code>String</code> containing the current working directory,
	*         or <code>null</code>
	* @throws IOException
	*/
	@:overload override public function getWorkingDirectory() : String;
	
	/**
	* Sets the restart offset to the specified value.  That value will be
	* sent through a <code>REST</code> command to server before a file
	* transfer and has the effect of resuming a file transfer from the
	* specified point. After a transfer the restart offset is set back to
	* zero.
	*
	* @param offset the offset in the remote file at which to start the next
	*        transfer. This must be a value greater than or equal to zero.
	* @throws IllegalArgumentException if the offset is negative.
	*/
	@:overload override public function setRestartOffset(offset : haxe.Int64) : sun.net.ftp.FtpClient;
	
	/**
	* Retrieves a file from the ftp server and writes it to the specified
	* <code>OutputStream</code>.
	* If the restart offset was set, then a <code>REST</code> command will be
	* sent before the RETR in order to restart the tranfer from the specified
	* offset.
	* The <code>OutputStream</code> is not closed by this method at the end
	* of the transfer.
	*
	* @param name a <code>String<code> containing the name of the file to
	*        retreive from the server.
	* @param local the <code>OutputStream</code> the file should be written to.
	* @throws IOException if the transfer fails.
	*/
	@:overload override public function getFile(name : String, local : java.io.OutputStream) : sun.net.ftp.FtpClient;
	
	/**
	* Retrieves a file from the ftp server, using the RETR command, and
	* returns the InputStream from* the established data connection.
	* {@link #completePending()} <b>has</b> to be called once the application
	* is done reading from the returned stream.
	*
	* @param name the name of the remote file
	* @return the {@link java.io.InputStream} from the data connection, or
	*         <code>null</code> if the command was unsuccessful.
	* @throws IOException if an error occured during the transmission.
	*/
	@:overload override public function getFileStream(name : String) : java.io.InputStream;
	
	/**
	* Transfers a file from the client to the server (aka a <I>put</I>)
	* by sending the STOR or STOU command, depending on the
	* <code>unique</code> argument, and returns the <code>OutputStream</code>
	* from the established data connection.
	* {@link #completePending()} <b>has</b> to be called once the application
	* is finished writing to the stream.
	*
	* A new file is created at the server site if the file specified does
	* not already exist.
	*
	* If <code>unique</code> is set to <code>true</code>, the resultant file
	* is to be created under a name unique to that directory, meaning
	* it will not overwrite an existing file, instead the server will
	* generate a new, unique, file name.
	* The name of the remote file can be retrieved, after completion of the
	* transfer, by calling {@link #getLastFileName()}.
	*
	* @param name the name of the remote file to write.
	* @param unique <code>true</code> if the remote files should be unique,
	*        in which case the STOU command will be used.
	* @return the {@link java.io.OutputStream} from the data connection or
	*         <code>null</code> if the command was unsuccessful.
	* @throws IOException if an error occured during the transmission.
	*/
	@:overload override public function putFileStream(name : String, unique : Bool) : java.io.OutputStream;
	
	/**
	* Transfers a file from the client to the server (aka a <I>put</I>)
	* by sending the STOR command. The content of the <code>InputStream</code>
	* passed in argument is written into the remote file, overwriting any
	* existing data.
	*
	* A new file is created at the server site if the file specified does
	* not already exist.
	*
	* @param name the name of the remote file to write.
	* @param local the <code>InputStream</code> that points to the data to
	*        transfer.
	* @param unique <code>true</code> if the remote file should be unique
	*        (i.e. not already existing), <code>false</code> otherwise.
	* @return <code>true</code> if the transfer was successful.
	* @throws IOException if an error occured during the transmission.
	* @see #getLastFileName()
	*/
	@:overload override public function putFile(name : String, local : java.io.InputStream, unique : Bool) : sun.net.ftp.FtpClient;
	
	/**
	* Sends the APPE command to the server in order to transfer a data stream
	* passed in argument and append it to the content of the specified remote
	* file.
	*
	* @param name A <code>String</code> containing the name of the remote file
	*        to append to.
	* @param local The <code>InputStream</code> providing access to the data
	*        to be appended.
	* @return <code>true</code> if the transfer was successful.
	* @throws IOException if an error occured during the transmission.
	*/
	@:overload override public function appendFile(name : String, local : java.io.InputStream) : sun.net.ftp.FtpClient;
	
	/**
	* Renames a file on the server.
	*
	* @param from the name of the file being renamed
	* @param to the new name for the file
	* @throws IOException if the command fails
	*/
	@:overload override public function rename(from : String, to : String) : sun.net.ftp.FtpClient;
	
	/**
	* Deletes a file on the server.
	*
	* @param name a <code>String</code> containing the name of the file
	*        to delete.
	* @return <code>true</code> if the command was successful
	* @throws IOException if an error occured during the exchange
	*/
	@:overload override public function deleteFile(name : String) : sun.net.ftp.FtpClient;
	
	/**
	* Creates a new directory on the server.
	*
	* @param name a <code>String</code> containing the name of the directory
	*        to create.
	* @return <code>true</code> if the operation was successful.
	* @throws IOException if an error occured during the exchange
	*/
	@:overload override public function makeDirectory(name : String) : sun.net.ftp.FtpClient;
	
	/**
	* Removes a directory on the server.
	*
	* @param name a <code>String</code> containing the name of the directory
	*        to remove.
	*
	* @return <code>true</code> if the operation was successful.
	* @throws IOException if an error occured during the exchange.
	*/
	@:overload override public function removeDirectory(name : String) : sun.net.ftp.FtpClient;
	
	/**
	* Sends a No-operation command. It's useful for testing the connection
	* status or as a <I>keep alive</I> mechanism.
	*
	* @throws FtpProtocolException if the command fails
	*/
	@:overload override public function noop() : sun.net.ftp.FtpClient;
	
	/**
	* Sends the STAT command to the server.
	* This can be used while a data connection is open to get a status
	* on the current transfer, in that case the parameter should be
	* <code>null</code>.
	* If used between file transfers, it may have a pathname as argument
	* in which case it will work as the LIST command except no data
	* connection will be created.
	*
	* @param name an optional <code>String</code> containing the pathname
	*        the STAT command should apply to.
	* @return the response from the server or <code>null</code> if the
	*         command failed.
	* @throws IOException if an error occured during the transmission.
	*/
	@:overload override public function getStatus(name : String) : String;
	
	/**
	* Sends the FEAT command to the server and returns the list of supported
	* features in the form of strings.
	*
	* The features are the supported commands, like AUTH TLS, PROT or PASV.
	* See the RFCs for a complete list.
	*
	* Note that not all FTP servers support that command, in which case
	* the method will return <code>null</code>
	*
	* @return a <code>List</code> of <code>Strings</code> describing the
	*         supported additional features, or <code>null</code>
	*         if the command is not supported.
	* @throws IOException if an error occurs during the transmission.
	*/
	@:overload override public function getFeatures() : java.util.List<String>;
	
	/**
	* sends the ABOR command to the server.
	* It tells the server to stop the previous command or transfer.
	*
	* @return <code>true</code> if the command was successful.
	* @throws IOException if an error occured during the transmission.
	*/
	@:overload override public function abort() : sun.net.ftp.FtpClient;
	
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
	* <p>Note that this will return true immediately if no command or action
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
	* cl.logout();
	* </pre>
	* <p>Since {@link #logout()} will call completePending() if necessary.</p>
	* @return <code>true</code> if the completion was successful or if no
	*         action was pending.
	* @throws IOException
	*/
	@:overload override public function completePending() : sun.net.ftp.FtpClient;
	
	/**
	* Reinitializes the USER parameters on the FTP server
	*
	* @throws FtpProtocolException if the command fails
	*/
	@:overload override public function reInit() : sun.net.ftp.FtpClient;
	
	/**
	* Changes the transfer type (binary, ascii, ebcdic) and issue the
	* proper command (e.g. TYPE A) to the server.
	*
	* @param type the <code>FtpTransferType</code> to use.
	* @return This FtpClient
	* @throws IOException if an error occurs during transmission.
	*/
	@:overload override public function setType(type : sun.net.ftp.FtpClient.FtpClient_TransferType) : sun.net.ftp.FtpClient;
	
	/**
	* Issues a LIST command to the server to get the current directory
	* listing, and returns the InputStream from the data connection.
	* {@link #completePending()} <b>has</b> to be called once the application
	* is finished writing to the stream.
	*
	* @param path the pathname of the directory to list, or <code>null</code>
	*        for the current working directory.
	* @return the <code>InputStream</code> from the resulting data connection
	* @throws IOException if an error occurs during the transmission.
	* @see #changeDirectory(String)
	* @see #listFiles(String)
	*/
	@:overload override public function list(path : String) : java.io.InputStream;
	
	/**
	* Issues a NLST path command to server to get the specified directory
	* content. It differs from {@link #list(String)} method by the fact that
	* it will only list the file names which would make the parsing of the
	* somewhat easier.
	*
	* {@link #completePending()} <b>has</b> to be called once the application
	* is finished writing to the stream.
	*
	* @param path a <code>String</code> containing the pathname of the
	*        directory to list or <code>null</code> for the current working
	*        directory.
	* @return the <code>InputStream</code> from the resulting data connection
	* @throws IOException if an error occurs during the transmission.
	*/
	@:overload override public function nameList(path : String) : java.io.InputStream;
	
	/**
	* Issues the SIZE [path] command to the server to get the size of a
	* specific file on the server.
	* Note that this command may not be supported by the server. In which
	* case -1 will be returned.
	*
	* @param path a <code>String</code> containing the pathname of the
	*        file.
	* @return a <code>long</code> containing the size of the file or -1 if
	*         the server returned an error, which can be checked with
	*         {@link #getLastReplyCode()}.
	* @throws IOException if an error occurs during the transmission.
	*/
	@:overload override public function getSize(path : String) : haxe.Int64;
	
	/**
	* Issues the MDTM [path] command to the server to get the modification
	* time of a specific file on the server.
	* Note that this command may not be supported by the server, in which
	* case <code>null</code> will be returned.
	*
	* @param path a <code>String</code> containing the pathname of the file.
	* @return a <code>Date</code> representing the last modification time
	*         or <code>null</code> if the server returned an error, which
	*         can be checked with {@link #getLastReplyCode()}.
	* @throws IOException if an error occurs during the transmission.
	*/
	@:overload override public function getLastModified(path : String) : java.util.Date;
	
	/**
	* Sets the parser used to handle the directory output to the specified
	* one. By default the parser is set to one that can handle most FTP
	* servers output (Unix base mostly). However it may be necessary for
	* and application to provide its own parser due to some uncommon
	* output format.
	*
	* @param p The <code>FtpDirParser</code> to use.
	* @see #listFiles(String)
	*/
	@:overload override public function setDirParser(p : sun.net.ftp.FtpDirParser) : sun.net.ftp.FtpClient;
	
	/**
	* Issues a MLSD command to the server to get the specified directory
	* listing and applies the current parser to create an Iterator of
	* {@link java.net.ftp.FtpDirEntry}. Note that the Iterator returned is also a
	* {@link java.io.Closeable}.
	* If the server doesn't support the MLSD command, the LIST command is used
	* instead.
	*
	* {@link #completePending()} <b>has</b> to be called once the application
	* is finished iterating through the files.
	*
	* @param path the pathname of the directory to list or <code>null</code>
	*        for the current working directoty.
	* @return a <code>Iterator</code> of files or <code>null</code> if the
	*         command failed.
	* @throws IOException if an error occured during the transmission
	* @see #setDirParser(FtpDirParser)
	* @see #changeDirectory(String)
	*/
	@:overload override public function listFiles(path : String) : java.util.Iterator<sun.net.ftp.FtpDirEntry>;
	
	/**
	* Attempts to use Kerberos GSSAPI as an authentication mechanism with the
	* ftp server. This will issue an <code>AUTH GSSAPI</code> command, and if
	* it is accepted by the server, will followup with <code>ADAT</code>
	* command to exchange the various tokens until authentification is
	* successful. This conforms to Appendix I of RFC 2228.
	*
	* @return <code>true</code> if authentication was successful.
	* @throws IOException if an error occurs during the transmission.
	*/
	@:overload override public function useKerberos() : sun.net.ftp.FtpClient;
	
	/**
	* Returns the Welcome string the server sent during initial connection.
	*
	* @return a <code>String</code> containing the message the server
	*         returned during connection or <code>null</code>.
	*/
	@:overload override public function getWelcomeMsg() : String;
	
	/**
	* Returns the last reply code sent by the server.
	*
	* @return the lastReplyCode
	*/
	@:overload override public function getLastReplyCode() : sun.net.ftp.FtpReplyCode;
	
	/**
	* Returns the last response string sent by the server.
	*
	* @return the message string, which can be quite long, last returned
	*         by the server.
	*/
	@:overload override public function getLastResponseString() : String;
	
	/**
	* Returns, when available, the size of the latest started transfer.
	* This is retreived by parsing the response string received as an initial
	* response to a RETR or similar request.
	*
	* @return the size of the latest transfer or -1 if either there was no
	*         transfer or the information was unavailable.
	*/
	@:overload override public function getLastTransferSize() : haxe.Int64;
	
	/**
	* Returns, when available, the remote name of the last transfered file.
	* This is mainly useful for "put" operation when the unique flag was
	* set since it allows to recover the unique file name created on the
	* server which may be different from the one submitted with the command.
	*
	* @return the name the latest transfered file remote name, or
	*         <code>null</code> if that information is unavailable.
	*/
	@:overload override public function getLastFileName() : String;
	
	/**
	* Attempts to switch to a secure, encrypted connection. This is done by
	* sending the "AUTH TLS" command.
	* <p>See <a href="http://www.ietf.org/rfc/rfc4217.txt">RFC 4217</a></p>
	* If successful this will establish a secure command channel with the
	* server, it will also make it so that all other transfers (e.g. a RETR
	* command) will be done over an encrypted channel as well unless a
	* {@link #reInit()} command or a {@link #endSecureSession()} command is issued.
	*
	* @return <code>true</code> if the operation was successful.
	* @throws IOException if an error occured during the transmission.
	* @see #endSecureSession()
	*/
	@:overload override public function startSecureSession() : sun.net.ftp.FtpClient;
	
	/**
	* Sends a <code>CCC</code> command followed by a <code>PROT C</code>
	* command to the server terminating an encrypted session and reverting
	* back to a non crypted transmission.
	*
	* @return <code>true</code> if the operation was successful.
	* @throws IOException if an error occured during transmission.
	* @see #startSecureSession()
	*/
	@:overload override public function endSecureSession() : sun.net.ftp.FtpClient;
	
	/**
	* Sends the "Allocate" (ALLO) command to the server telling it to
	* pre-allocate the specified number of bytes for the next transfer.
	*
	* @param size The number of bytes to allocate.
	* @return <code>true</code> if the operation was successful.
	* @throws IOException if an error occured during the transmission.
	*/
	@:overload override public function allocate(size : haxe.Int64) : sun.net.ftp.FtpClient;
	
	/**
	* Sends the "Structure Mount" (SMNT) command to the server. This let the
	* user mount a different file system data structure without altering his
	* login or accounting information.
	*
	* @param struct a <code>String</code> containing the name of the
	*        structure to mount.
	* @return <code>true</code> if the operation was successful.
	* @throws IOException if an error occured during the transmission.
	*/
	@:overload override public function structureMount(struct : String) : sun.net.ftp.FtpClient;
	
	/**
	* Sends a SYST (System) command to the server and returns the String
	* sent back by the server describing the operating system at the
	* server.
	*
	* @return a <code>String</code> describing the OS, or <code>null</code>
	*         if the operation was not successful.
	* @throws IOException if an error occured during the transmission.
	*/
	@:overload override public function getSystem() : String;
	
	/**
	* Sends the HELP command to the server, with an optional command, like
	* SITE, and returns the text sent back by the server.
	*
	* @param cmd the command for which the help is requested or
	*        <code>null</code> for the general help
	* @return a <code>String</code> containing the text sent back by the
	*         server, or <code>null</code> if the command failed.
	* @throws IOException if an error occured during transmission
	*/
	@:overload override public function getHelp(cmd : String) : String;
	
	/**
	* Sends the SITE command to the server. This is used by the server
	* to provide services specific to his system that are essential
	* to file transfer.
	*
	* @param cmd the command to be sent.
	* @return <code>true</code> if the command was successful.
	* @throws IOException if an error occured during transmission
	*/
	@:overload override public function siteCmd(cmd : String) : sun.net.ftp.FtpClient;
	
	
}
@:native('sun$net$ftp$impl$FtpClient$DefaultParser') @:internal extern class FtpClient_DefaultParser implements sun.net.ftp.FtpDirParser
{
	@:overload public function parseLine(line : String) : sun.net.ftp.FtpDirEntry;
	
	
}
@:native('sun$net$ftp$impl$FtpClient$MLSxParser') @:internal extern class FtpClient_MLSxParser implements sun.net.ftp.FtpDirParser
{
	@:overload public function parseLine(line : String) : sun.net.ftp.FtpDirEntry;
	
	
}
@:native('sun$net$ftp$impl$FtpClient$FtpFileIterator') @:internal extern class FtpClient_FtpFileIterator implements java.util.Iterator<sun.net.ftp.FtpDirEntry> implements java.io.Closeable
{
	@:overload public function new(p : sun.net.ftp.FtpDirParser, _in : java.io.BufferedReader) : Void;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : sun.net.ftp.FtpDirEntry;
	
	@:overload public function remove() : Void;
	
	@:overload public function close() : Void;
	
	
}
