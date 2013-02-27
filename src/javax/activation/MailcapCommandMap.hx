package javax.activation;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class MailcapCommandMap extends javax.activation.CommandMap
{
	/**
	* The default Constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor that allows the caller to specify the path
	* of a <i>mailcap</i> file.
	*
	* @param fileName The name of the <i>mailcap</i> file to open
	* @exception       IOException     if the file can't be accessed
	*/
	@:overload public function new(fileName : String) : Void;
	
	/**
	* Constructor that allows the caller to specify an <i>InputStream</i>
	* containing a mailcap file.
	*
	* @param is        InputStream of the <i>mailcap</i> file to open
	*/
	@:overload public function new(is : java.io.InputStream) : Void;
	
	/**
	* Get the preferred command list for a MIME Type. The MailcapCommandMap
	* searches the mailcap files as described above under
	* <i>Mailcap file search order</i>.<p>
	*
	* The result of the search is a proper subset of available
	* commands in all mailcap files known to this instance of
	* MailcapCommandMap.  The first entry for a particular command
	* is considered the preferred command.
	*
	* @param mimeType  the MIME type
	* @return the CommandInfo objects representing the preferred commands.
	*/
	@:overload @:synchronized override public function getPreferredCommands(mimeType : String) : java.NativeArray<javax.activation.CommandInfo>;
	
	/**
	* Get all the available commands in all mailcap files known to
	* this instance of MailcapCommandMap for this MIME type.
	*
	* @param mimeType  the MIME type
	* @return the CommandInfo objects representing all the commands.
	*/
	@:overload @:synchronized override public function getAllCommands(mimeType : String) : java.NativeArray<javax.activation.CommandInfo>;
	
	/**
	* Get the command corresponding to <code>cmdName</code> for the MIME type.
	*
	* @param mimeType  the MIME type
	* @param cmdName   the command name
	* @return the CommandInfo object corresponding to the command.
	*/
	@:overload @:synchronized override public function getCommand(mimeType : String, cmdName : String) : javax.activation.CommandInfo;
	
	/**
	* Add entries to the registry.  Programmatically
	* added entries are searched before other entries.<p>
	*
	* The string that is passed in should be in mailcap
	* format.
	*
	* @param mail_cap a correctly formatted mailcap string
	*/
	@:overload @:synchronized public function addMailcap(mail_cap : String) : Void;
	
	/**
	* Return the DataContentHandler for the specified MIME type.
	*
	* @param mimeType  the MIME type
	* @return          the DataContentHandler
	*/
	@:overload @:synchronized override public function createDataContentHandler(mimeType : String) : javax.activation.DataContentHandler;
	
	/**
	* Get all the MIME types known to this command map.
	*
	* @return          array of MIME types as strings
	* @since   JAF 1.1
	*/
	@:require(java1) @:overload @:synchronized override public function getMimeTypes() : java.NativeArray<String>;
	
	/**
	* Get the native commands for the given MIME type.
	* Returns an array of strings where each string is
	* an entire mailcap file entry.  The application
	* will need to parse the entry to extract the actual
	* command as well as any attributes it needs. See
	* <A HREF="http://www.ietf.org/rfc/rfc1524.txt">RFC 1524</A>
	* for details of the mailcap entry syntax.  Only mailcap
	* entries that specify a view command for the specified
	* MIME type are returned.
	*
	* @return          array of native command entries
	* @since   JAF 1.1
	*/
	@:require(java1) @:overload @:synchronized public function getNativeCommands(mimeType : String) : java.NativeArray<String>;
	
	
}
