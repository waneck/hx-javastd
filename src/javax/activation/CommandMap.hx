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
/**
* The CommandMap class provides an interface to a registry of
* command objects available in the system.
* Developers are expected to either use the CommandMap
* implementation included with this package (MailcapCommandMap) or
* develop their own. Note that some of the methods in this class are
* abstract.
*
* @since 1.6
*/
@:require(java6) extern class CommandMap
{
	/**
	* Get the default CommandMap.
	* <p>
	*
	* <ul>
	* <li> In cases where a CommandMap instance has been previously set
	*      to some value (via <i>setDefaultCommandMap</i>)
	*  return the CommandMap.
	* <li>
	*  In cases where no CommandMap has been set, the CommandMap
	*       creates an instance of <code>MailcapCommandMap</code> and
	*       set that to the default, returning its value.
	*
	* </ul>
	*
	* @return the CommandMap
	*/
	@:overload @:public @:static public static function getDefaultCommandMap() : javax.activation.CommandMap;
	
	/**
	* Set the default CommandMap. Reset the CommandMap to the default by
	* calling this method with <code>null</code>.
	*
	* @param commandMap The new default CommandMap.
	* @exception SecurityException if the caller doesn't have permission
	*                                  to change the default
	*/
	@:overload @:public @:static public static function setDefaultCommandMap(commandMap : javax.activation.CommandMap) : Void;
	
	/**
	* Get the preferred command list from a MIME Type. The actual semantics
	* are determined by the implementation of the CommandMap.
	*
	* @param mimeType  the MIME type
	* @return the CommandInfo classes that represent the command Beans.
	*/
	@:overload @:abstract @:public public function getPreferredCommands(mimeType : String) : java.NativeArray<javax.activation.CommandInfo>;
	
	/**
	* Get the preferred command list from a MIME Type. The actual semantics
	* are determined by the implementation of the CommandMap. <p>
	*
	* The <code>DataSource</code> provides extra information, such as
	* the file name, that a CommandMap implementation may use to further
	* refine the list of commands that are returned.  The implementation
	* in this class simply calls the <code>getPreferredCommands</code>
	* method that ignores this argument.
	*
	* @param mimeType  the MIME type
	* @param ds        a DataSource for the data
	* @return the CommandInfo classes that represent the command Beans.
	* @since   JAF 1.1
	*/
	@:require(java1) @:overload @:public public function getPreferredCommands(mimeType : String, ds : javax.activation.DataSource) : java.NativeArray<javax.activation.CommandInfo>;
	
	/**
	* Get all the available commands for this type. This method
	* should return all the possible commands for this MIME type.
	*
	* @param mimeType  the MIME type
	* @return the CommandInfo objects representing all the commands.
	*/
	@:overload @:abstract @:public public function getAllCommands(mimeType : String) : java.NativeArray<javax.activation.CommandInfo>;
	
	/**
	* Get all the available commands for this type. This method
	* should return all the possible commands for this MIME type. <p>
	*
	* The <code>DataSource</code> provides extra information, such as
	* the file name, that a CommandMap implementation may use to further
	* refine the list of commands that are returned.  The implementation
	* in this class simply calls the <code>getAllCommands</code>
	* method that ignores this argument.
	*
	* @param mimeType  the MIME type
	* @param ds        a DataSource for the data
	* @return the CommandInfo objects representing all the commands.
	* @since   JAF 1.1
	*/
	@:require(java1) @:overload @:public public function getAllCommands(mimeType : String, ds : javax.activation.DataSource) : java.NativeArray<javax.activation.CommandInfo>;
	
	/**
	* Get the default command corresponding to the MIME type.
	*
	* @param mimeType  the MIME type
	* @param cmdName   the command name
	* @return the CommandInfo corresponding to the command.
	*/
	@:overload @:abstract @:public public function getCommand(mimeType : String, cmdName : String) : javax.activation.CommandInfo;
	
	/**
	* Get the default command corresponding to the MIME type. <p>
	*
	* The <code>DataSource</code> provides extra information, such as
	* the file name, that a CommandMap implementation may use to further
	* refine the command that is chosen.  The implementation
	* in this class simply calls the <code>getCommand</code>
	* method that ignores this argument.
	*
	* @param mimeType  the MIME type
	* @param cmdName   the command name
	* @param ds        a DataSource for the data
	* @return the CommandInfo corresponding to the command.
	* @since   JAF 1.1
	*/
	@:require(java1) @:overload @:public public function getCommand(mimeType : String, cmdName : String, ds : javax.activation.DataSource) : javax.activation.CommandInfo;
	
	/**
	* Locate a DataContentHandler that corresponds to the MIME type.
	* The mechanism and semantics for determining this are determined
	* by the implementation of the particular CommandMap.
	*
	* @param mimeType  the MIME type
	* @return          the DataContentHandler for the MIME type
	*/
	@:overload @:abstract @:public public function createDataContentHandler(mimeType : String) : javax.activation.DataContentHandler;
	
	/**
	* Locate a DataContentHandler that corresponds to the MIME type.
	* The mechanism and semantics for determining this are determined
	* by the implementation of the particular CommandMap. <p>
	*
	* The <code>DataSource</code> provides extra information, such as
	* the file name, that a CommandMap implementation may use to further
	* refine the choice of DataContentHandler.  The implementation
	* in this class simply calls the <code>createDataContentHandler</code>
	* method that ignores this argument.
	*
	* @param mimeType  the MIME type
	* @param ds        a DataSource for the data
	* @return          the DataContentHandler for the MIME type
	* @since   JAF 1.1
	*/
	@:require(java1) @:overload @:public public function createDataContentHandler(mimeType : String, ds : javax.activation.DataSource) : javax.activation.DataContentHandler;
	
	/**
	* Get all the MIME types known to this command map.
	* If the command map doesn't support this operation,
	* null is returned.
	*
	* @return          array of MIME types as strings, or null if not supported
	* @since   JAF 1.1
	*/
	@:require(java1) @:overload @:public public function getMimeTypes() : java.NativeArray<String>;
	
	
}
