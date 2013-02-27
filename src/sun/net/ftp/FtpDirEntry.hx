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
extern class FtpDirEntry
{
	/**
	* Creates an FtpDirEntry instance with only the name being set.
	*
	* @param name The name of the file
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Returns the name of the remote file.
	*
	* @return a {@code String} containing the name of the remote file.
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns the user name of the owner of the file as returned by the FTP
	* server, if provided. This could be a name or a user id (number).
	*
	* @return a {@code String} containing the user name or
	*         {@code null} if that information is not available.
	*/
	@:overload public function getUser() : String;
	
	/**
	* Sets the user name of the owner of the file. Intended mostly to be
	* used from inside a {@link java.net.FtpDirParser} implementation.
	*
	* @param user The user name of the owner of the file, or {@code null}
	* if that information is not available.
	* @return this FtpDirEntry
	*/
	@:overload public function setUser(user : String) : FtpDirEntry;
	
	/**
	* Returns the group name of the file as returned by the FTP
	* server, if provided. This could be a name or a group id (number).
	*
	* @return a {@code String} containing the group name or
	*         {@code null} if that information is not available.
	*/
	@:overload public function getGroup() : String;
	
	/**
	* Sets the name of the group to which the file belong. Intended mostly to be
	* used from inside a {@link java.net.FtpDirParser} implementation.
	*
	* @param group The name of the group to which the file belong, or {@code null}
	* if that information is not available.
	* @return this FtpDirEntry
	*/
	@:overload public function setGroup(group : String) : FtpDirEntry;
	
	/**
	* Returns the size of the remote file as it was returned by the FTP
	* server, if provided.
	*
	* @return the size of the file or -1 if that information is not available.
	*/
	@:overload public function getSize() : haxe.Int64;
	
	/**
	* Sets the size of that file. Intended mostly to be used from inside an
	* {@link java.net.FtpDirParser} implementation.
	*
	* @param size The size, in bytes, of that file. or -1 if unknown.
	* @return this FtpDirEntry
	*/
	@:overload public function setSize(size : haxe.Int64) : FtpDirEntry;
	
	/**
	* Returns the type of the remote file as it was returned by the FTP
	* server, if provided.
	* It returns a FtpDirEntry.Type enum and the values can be:
	* - FtpDirEntry.Type.FILE for a normal file
	* - FtpDirEntry.Type.DIR for a directory
	* - FtpDirEntry.Type.LINK for a symbolic link
	*
	* @return a {@code FtpDirEntry.Type} describing the type of the file
	*         or {@code null} if that information is not available.
	*/
	@:overload public function getType() : FtpDirEntry_Type;
	
	/**
	* Sets the type of the file. Intended mostly to be used from inside an
	* {@link java.net.FtpDirParser} implementation.
	*
	* @param type the type of this file or {@code null} if that information
	* is not available.
	* @return this FtpDirEntry
	*/
	@:overload public function setType(type : FtpDirEntry_Type) : FtpDirEntry;
	
	/**
	* Returns the last modification time of the remote file as it was returned
	* by the FTP server, if provided, {@code null} otherwise.
	*
	* @return a <code>Date</code> representing the last time the file was
	*         modified on the server, or {@code null} if that
	*         information is not available.
	*/
	@:overload public function getLastModified() : java.util.Date;
	
	/**
	* Sets the last modification time of the file. Intended mostly to be used
	* from inside an {@link java.net.FtpDirParser} implementation.
	*
	* @param lastModified The Date representing the last modification time, or
	* {@code null} if that information is not available.
	* @return this FtpDirEntry
	*/
	@:overload public function setLastModified(lastModified : java.util.Date) : FtpDirEntry;
	
	/**
	* Returns whether read access is granted for a specific permission.
	*
	* @param p the Permission (user, group, others) to check.
	* @return {@code true} if read access is granted.
	*/
	@:overload public function canRead(p : FtpDirEntry_Permission) : Bool;
	
	/**
	* Returns whether write access is granted for a specific permission.
	*
	* @param p the Permission (user, group, others) to check.
	* @return {@code true} if write access is granted.
	*/
	@:overload public function canWrite(p : FtpDirEntry_Permission) : Bool;
	
	/**
	* Returns whether execute access is granted for a specific permission.
	*
	* @param p the Permission (user, group, others) to check.
	* @return {@code true} if execute access is granted.
	*/
	@:overload public function canExexcute(p : FtpDirEntry_Permission) : Bool;
	
	/**
	* Sets the permissions for that file. Intended mostly to be used
	* from inside an {@link java.net.FtpDirParser} implementation.
	* The permissions array is a 3x3 {@code boolean} array, the first index being
	* the User, group or owner (0, 1 and 2 respectively) while the second
	* index is read, write or execute (0, 1 and 2 respectively again).
	* <p>E.G.: {@code permissions[1][2]} is the group/execute permission.</p>
	*
	* @param permissions a 3x3 {@code boolean} array
	* @return this {@code FtpDirEntry}
	*/
	@:overload public function setPermissions(permissions : java.NativeArray<java.NativeArray<Bool>>) : FtpDirEntry;
	
	/**
	* Adds a 'fact', as defined in RFC 3659, to the list of facts of this file.
	* Intended mostly to be used from inside a {@link java.net.FtpDirParser}
	* implementation.
	*
	* @param fact the name of the fact (e.g. "Media-Type"). It is not case-sensitive.
	* @param value the value associated with this fact.
	* @return this {@code FtpDirEntry}
	*/
	@:overload public function addFact(fact : String, value : String) : FtpDirEntry;
	
	/**
	* Returns the requested 'fact', as defined in RFC 3659, if available.
	*
	* @param fact The name of the fact *e.g. "Media-Type"). It is not case sensitive.
	* @return The value of the fact or, {@code null} if that fact wasn't
	* provided by the server.
	*/
	@:overload public function getFact(fact : String) : String;
	
	/**
	* Returns the creation time of the file, when provided by the server.
	*
	* @return The Date representing the creation time, or {@code null}
	* if the server didn't provide that information.
	*/
	@:overload public function getCreated() : java.util.Date;
	
	/**
	* Sets the creation time for that file. Intended mostly to be used from
	* inside a {@link java.net.FtpDirParser} implementation.
	*
	* @param created the Date representing the creation time for that file, or
	* {@code null} if that information is not available.
	* @return this FtpDirEntry
	*/
	@:overload public function setCreated(created : java.util.Date) : FtpDirEntry;
	
	/**
	* Returns a string representation of the object.
	* The {@code toString} method for class {@code FtpDirEntry}
	* returns a string consisting of the name of the file, followed by its
	* type between brackets, followed by the user and group between
	* parenthesis, then size between '{', and, finally, the lastModified of last
	* modification if it's available.
	*
	* @return  a string representation of the object.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* A {@code FtpDirEntry} is a class agregating all the information that the FTP client
* can gather from the server by doing a {@code LST} (or {@code NLST}) command and
* parsing the output. It will typically contain the name, type, size, last modification
* time, owner and group of the file, although some of these could be unavailable
* due to specific FTP server limitations.
*
* @see sun.net.ftp.FtpDirParser
* @since 1.7
*/
@:require(java7) @:native('sun$net$ftp$FtpDirEntry$Type') extern enum FtpDirEntry_Type
{
	FILE;
	DIR;
	PDIR;
	CDIR;
	LINK;
	
}

@:native('sun$net$ftp$FtpDirEntry$Permission') extern enum FtpDirEntry_Permission
{
	USER;
	GROUP;
	OTHERS;
	
}

