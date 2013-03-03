package java.util.logging;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
* <tt>Handler</tt> that buffers requests in a circular buffer in memory.
* <p>
* Normally this <tt>Handler</tt> simply stores incoming <tt>LogRecords</tt>
* into its memory buffer and discards earlier records.  This buffering
* is very cheap and avoids formatting costs.  On certain trigger
* conditions, the <tt>MemoryHandler</tt> will push out its current buffer
* contents to a target <tt>Handler</tt>, which will typically publish
* them to the outside world.
* <p>
* There are three main models for triggering a push of the buffer:
* <ul>
* <li>
* An incoming <tt>LogRecord</tt> has a type that is greater than
* a pre-defined level, the <tt>pushLevel</tt>.
* <li>
* An external class calls the <tt>push</tt> method explicitly.
* <li>
* A subclass overrides the <tt>log</tt> method and scans each incoming
* <tt>LogRecord</tt> and calls <tt>push</tt> if a record matches some
* desired criteria.
* </ul>
* <p>
* <b>Configuration:</b>
* By default each <tt>MemoryHandler</tt> is initialized using the following
* LogManager configuration properties.  If properties are not defined
* (or have invalid values) then the specified default values are used.
* If no default value is defined then a RuntimeException is thrown.
* <ul>
* <li>   java.util.logging.MemoryHandler.level
*        specifies the level for the <tt>Handler</tt>
*        (defaults to <tt>Level.ALL</tt>).
* <li>   java.util.logging.MemoryHandler.filter
*        specifies the name of a <tt>Filter</tt> class to use
*        (defaults to no <tt>Filter</tt>).
* <li>   java.util.logging.MemoryHandler.size
*        defines the buffer size (defaults to 1000).
* <li>   java.util.logging.MemoryHandler.push
*        defines the <tt>pushLevel</tt> (defaults to <tt>level.SEVERE</tt>).
* <li>   java.util.logging.MemoryHandler.target
*        specifies the name of the target <tt>Handler </tt> class.
*        (no default).
* </ul>
*
* @since 1.4
*/
@:require(java4) extern class MemoryHandler extends java.util.logging.Handler
{
	/**
	* Create a <tt>MemoryHandler</tt> and configure it based on
	* <tt>LogManager</tt> configuration properties.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create a <tt>MemoryHandler</tt>.
	* <p>
	* The <tt>MemoryHandler</tt> is configured based on <tt>LogManager</tt>
	* properties (or their default values) except that the given <tt>pushLevel</tt>
	* argument and buffer size argument are used.
	*
	* @param target  the Handler to which to publish output.
	* @param size    the number of log records to buffer (must be greater than zero)
	* @param pushLevel  message level to push on
	*
	* @throws IllegalArgumentException if size is <= 0
	*/
	@:overload @:public public function new(target : java.util.logging.Handler, size : Int, pushLevel : java.util.logging.Level) : Void;
	
	/**
	* Store a <tt>LogRecord</tt> in an internal buffer.
	* <p>
	* If there is a <tt>Filter</tt>, its <tt>isLoggable</tt>
	* method is called to check if the given log record is loggable.
	* If not we return.  Otherwise the given record is copied into
	* an internal circular buffer.  Then the record's level property is
	* compared with the <tt>pushLevel</tt>. If the given level is
	* greater than or equal to the <tt>pushLevel</tt> then <tt>push</tt>
	* is called to write all buffered records to the target output
	* <tt>Handler</tt>.
	*
	* @param  record  description of the log event. A null record is
	*                 silently ignored and is not published
	*/
	@:overload @:public @:synchronized override public function publish(record : java.util.logging.LogRecord) : Void;
	
	/**
	* Push any buffered output to the target <tt>Handler</tt>.
	* <p>
	* The buffer is then cleared.
	*/
	@:overload @:public @:synchronized public function push() : Void;
	
	/**
	* Causes a flush on the target <tt>Handler</tt>.
	* <p>
	* Note that the current contents of the <tt>MemoryHandler</tt>
	* buffer are <b>not</b> written out.  That requires a "push".
	*/
	@:overload @:public override public function flush() : Void;
	
	/**
	* Close the <tt>Handler</tt> and free all associated resources.
	* This will also close the target <tt>Handler</tt>.
	*
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Set the <tt>pushLevel</tt>.  After a <tt>LogRecord</tt> is copied
	* into our internal buffer, if its level is greater than or equal to
	* the <tt>pushLevel</tt>, then <tt>push</tt> will be called.
	*
	* @param newLevel the new value of the <tt>pushLevel</tt>
	* @exception  SecurityException  if a security manager exists and if
	*             the caller does not have <tt>LoggingPermission("control")</tt>.
	*/
	@:overload @:public public function setPushLevel(newLevel : java.util.logging.Level) : Void;
	
	/**
	* Get the <tt>pushLevel</tt>.
	*
	* @return the value of the <tt>pushLevel</tt>
	*/
	@:overload @:public @:synchronized public function getPushLevel() : java.util.logging.Level;
	
	/**
	* Check if this <tt>Handler</tt> would actually log a given
	* <tt>LogRecord</tt> into its internal buffer.
	* <p>
	* This method checks if the <tt>LogRecord</tt> has an appropriate level and
	* whether it satisfies any <tt>Filter</tt>.  However it does <b>not</b>
	* check whether the <tt>LogRecord</tt> would result in a "push" of the
	* buffer contents. It will return false if the <tt>LogRecord</tt> is null.
	* <p>
	* @param record  a <tt>LogRecord</tt>
	* @return true if the <tt>LogRecord</tt> would be logged.
	*
	*/
	@:overload @:public override public function isLoggable(record : java.util.logging.LogRecord) : Bool;
	
	
}
