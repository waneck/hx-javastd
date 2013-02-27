package java.util.logging;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class Handler
{
	/**
	* Default constructor.  The resulting <tt>Handler</tt> has a log
	* level of <tt>Level.ALL</tt>, no <tt>Formatter</tt>, and no
	* <tt>Filter</tt>.  A default <tt>ErrorManager</tt> instance is installed
	* as the <tt>ErrorManager</tt>.
	*/
	@:overload private function new() : Void;
	
	/**
	* Publish a <tt>LogRecord</tt>.
	* <p>
	* The logging request was made initially to a <tt>Logger</tt> object,
	* which initialized the <tt>LogRecord</tt> and forwarded it here.
	* <p>
	* The <tt>Handler</tt>  is responsible for formatting the message, when and
	* if necessary.  The formatting should include localization.
	*
	* @param  record  description of the log event. A null record is
	*                 silently ignored and is not published
	*/
	@:overload @:abstract public function publish(record : java.util.logging.LogRecord) : Void;
	
	/**
	* Flush any buffered output.
	*/
	@:overload @:abstract public function flush() : Void;
	
	/**
	* Close the <tt>Handler</tt> and free all associated resources.
	* <p>
	* The close method will perform a <tt>flush</tt> and then close the
	* <tt>Handler</tt>.   After close has been called this <tt>Handler</tt>
	* should no longer be used.  Method calls may either be silently
	* ignored or may throw runtime exceptions.
	*
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	*/
	@:overload @:abstract public function close() : Void;
	
	/**
	* Set a <tt>Formatter</tt>.  This <tt>Formatter</tt> will be used
	* to format <tt>LogRecords</tt> for this <tt>Handler</tt>.
	* <p>
	* Some <tt>Handlers</tt> may not use <tt>Formatters</tt>, in
	* which case the <tt>Formatter</tt> will be remembered, but not used.
	* <p>
	* @param newFormatter the <tt>Formatter</tt> to use (may not be null)
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	*/
	@:overload public function setFormatter(newFormatter : java.util.logging.Formatter) : Void;
	
	/**
	* Return the <tt>Formatter</tt> for this <tt>Handler</tt>.
	* @return the <tt>Formatter</tt> (may be null).
	*/
	@:overload public function getFormatter() : java.util.logging.Formatter;
	
	/**
	* Set the character encoding used by this <tt>Handler</tt>.
	* <p>
	* The encoding should be set before any <tt>LogRecords</tt> are written
	* to the <tt>Handler</tt>.
	*
	* @param encoding  The name of a supported character encoding.
	*        May be null, to indicate the default platform encoding.
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	* @exception  UnsupportedEncodingException if the named encoding is
	*          not supported.
	*/
	@:overload public function setEncoding(encoding : String) : Void;
	
	/**
	* Return the character encoding for this <tt>Handler</tt>.
	*
	* @return  The encoding name.  May be null, which indicates the
	*          default encoding should be used.
	*/
	@:overload public function getEncoding() : String;
	
	/**
	* Set a <tt>Filter</tt> to control output on this <tt>Handler</tt>.
	* <P>
	* For each call of <tt>publish</tt> the <tt>Handler</tt> will call
	* this <tt>Filter</tt> (if it is non-null) to check if the
	* <tt>LogRecord</tt> should be published or discarded.
	*
	* @param   newFilter  a <tt>Filter</tt> object (may be null)
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	*/
	@:overload public function setFilter(newFilter : java.util.logging.Filter) : Void;
	
	/**
	* Get the current <tt>Filter</tt> for this <tt>Handler</tt>.
	*
	* @return  a <tt>Filter</tt> object (may be null)
	*/
	@:overload public function getFilter() : java.util.logging.Filter;
	
	/**
	* Define an ErrorManager for this Handler.
	* <p>
	* The ErrorManager's "error" method will be invoked if any
	* errors occur while using this Handler.
	*
	* @param em  the new ErrorManager
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	*/
	@:overload public function setErrorManager(em : java.util.logging.ErrorManager) : Void;
	
	/**
	* Retrieves the ErrorManager for this Handler.
	*
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	*/
	@:overload public function getErrorManager() : java.util.logging.ErrorManager;
	
	/**
	* Protected convenience method to report an error to this Handler's
	* ErrorManager.  Note that this method retrieves and uses the ErrorManager
	* without doing a security check.  It can therefore be used in
	* environments where the caller may be non-privileged.
	*
	* @param msg    a descriptive string (may be null)
	* @param ex     an exception (may be null)
	* @param code   an error code defined in ErrorManager
	*/
	@:overload private function reportError(msg : String, ex : java.lang.Exception, code : Int) : Void;
	
	/**
	* Set the log level specifying which message levels will be
	* logged by this <tt>Handler</tt>.  Message levels lower than this
	* value will be discarded.
	* <p>
	* The intention is to allow developers to turn on voluminous
	* logging, but to limit the messages that are sent to certain
	* <tt>Handlers</tt>.
	*
	* @param newLevel   the new value for the log level
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	*/
	@:overload @:synchronized public function setLevel(newLevel : java.util.logging.Level) : Void;
	
	/**
	* Get the log level specifying which messages will be
	* logged by this <tt>Handler</tt>.  Message levels lower
	* than this level will be discarded.
	* @return  the level of messages being logged.
	*/
	@:overload @:synchronized public function getLevel() : java.util.logging.Level;
	
	/**
	* Check if this <tt>Handler</tt> would actually log a given <tt>LogRecord</tt>.
	* <p>
	* This method checks if the <tt>LogRecord</tt> has an appropriate
	* <tt>Level</tt> and  whether it satisfies any <tt>Filter</tt>.  It also
	* may make other <tt>Handler</tt> specific checks that might prevent a
	* handler from logging the <tt>LogRecord</tt>. It will return false if
	* the <tt>LogRecord</tt> is null.
	* <p>
	* @param record  a <tt>LogRecord</tt>
	* @return true if the <tt>LogRecord</tt> would be logged.
	*
	*/
	@:overload public function isLoggable(record : java.util.logging.LogRecord) : Bool;
	
	
}
