package java.beans;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLEncoder extends java.beans.Encoder implements java.lang.AutoCloseable
{
	/**
	* Creates a new XML encoder to write out <em>JavaBeans</em>
	* to the stream <code>out</code> using an XML encoding.
	*
	* @param out  the stream to which the XML representation of
	*             the objects will be written
	*
	* @throws  IllegalArgumentException
	*          if <code>out</code> is <code>null</code>
	*
	* @see XMLDecoder#XMLDecoder(InputStream)
	*/
	@:overload public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Creates a new XML encoder to write out <em>JavaBeans</em>
	* to the stream <code>out</code> using the given <code>charset</code>
	* starting from the given <code>indentation</code>.
	*
	* @param out          the stream to which the XML representation of
	*                     the objects will be written
	* @param charset      the name of the requested charset;
	*                     may be either a canonical name or an alias
	* @param declaration  whether the XML declaration should be generated;
	*                     set this to <code>false</code>
	*                     when embedding the contents in another XML document
	* @param indentation  the number of space characters to indent the entire XML document by
	*
	* @throws  IllegalArgumentException
	*          if <code>out</code> or <code>charset</code> is <code>null</code>,
	*          or if <code>indentation</code> is less than 0
	*
	* @throws  IllegalCharsetNameException
	*          if <code>charset</code> name is illegal
	*
	* @throws  UnsupportedCharsetException
	*          if no support for the named charset is available
	*          in this instance of the Java virtual machine
	*
	* @throws  UnsupportedOperationException
	*          if loaded charset does not support encoding
	*
	* @see Charset#forName(String)
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(out : java.io.OutputStream, charset : String, declaration : Bool, indentation : Int) : Void;
	
	/**
	* Sets the owner of this encoder to <code>owner</code>.
	*
	* @param owner The owner of this encoder.
	*
	* @see #getOwner
	*/
	@:overload public function setOwner(owner : Dynamic) : Void;
	
	/**
	* Gets the owner of this encoder.
	*
	* @return The owner of this encoder.
	*
	* @see #setOwner
	*/
	@:overload public function getOwner() : Dynamic;
	
	/**
	* Write an XML representation of the specified object to the output.
	*
	* @param o The object to be written to the stream.
	*
	* @see XMLDecoder#readObject
	*/
	@:overload override public function writeObject(o : Dynamic) : Void;
	
	/**
	* Records the Statement so that the Encoder will
	* produce the actual output when the stream is flushed.
	* <P>
	* This method should only be invoked within the context
	* of initializing a persistence delegate.
	*
	* @param oldStm The statement that will be written
	*               to the stream.
	* @see java.beans.PersistenceDelegate#initialize
	*/
	@:overload override public function writeStatement(oldStm : java.beans.Statement) : Void;
	
	/**
	* Records the Expression so that the Encoder will
	* produce the actual output when the stream is flushed.
	* <P>
	* This method should only be invoked within the context of
	* initializing a persistence delegate or setting up an encoder to
	* read from a resource bundle.
	* <P>
	* For more information about using resource bundles with the
	* XMLEncoder, see
	* http://java.sun.com/products/jfc/tsc/articles/persistence4/#i18n
	*
	* @param oldExp The expression that will be written
	*               to the stream.
	* @see java.beans.PersistenceDelegate#initialize
	*/
	@:overload override public function writeExpression(oldExp : java.beans.Expression) : Void;
	
	/**
	* This method writes out the preamble associated with the
	* XML encoding if it has not been written already and
	* then writes out all of the values that been
	* written to the stream since the last time <code>flush</code>
	* was called. After flushing, all internal references to the
	* values that were written to this stream are cleared.
	*/
	@:overload public function flush() : Void;
	
	/**
	* This method calls <code>flush</code>, writes the closing
	* postamble and then closes the output stream associated
	* with this stream.
	*/
	@:overload public function close() : Void;
	
	
}
@:native('java$beans$XMLEncoder$ValueData') @:internal extern class XMLEncoder_ValueData
{
	public var refs : Int;
	
	public var marked : Bool;
	
	public var name : String;
	
	public var exp : java.beans.Expression;
	
	
}
