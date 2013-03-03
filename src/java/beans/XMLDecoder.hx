package java.beans;
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
extern class XMLDecoder implements java.lang.AutoCloseable
{
	/**
	* Creates a new input stream for reading archives
	* created by the <code>XMLEncoder</code> class.
	*
	* @param in The underlying stream.
	*
	* @see XMLEncoder#XMLEncoder(java.io.OutputStream)
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Creates a new input stream for reading archives
	* created by the <code>XMLEncoder</code> class.
	*
	* @param in The underlying stream.
	* @param owner The owner of this stream.
	*
	*/
	@:overload @:public public function new(_in : java.io.InputStream, owner : Dynamic) : Void;
	
	/**
	* Creates a new input stream for reading archives
	* created by the <code>XMLEncoder</code> class.
	*
	* @param in the underlying stream.
	* @param owner the owner of this stream.
	* @param exceptionListener the exception handler for the stream;
	*        if <code>null</code> the default exception listener will be used.
	*/
	@:overload @:public public function new(_in : java.io.InputStream, owner : Dynamic, exceptionListener : java.beans.ExceptionListener) : Void;
	
	/**
	* Creates a new input stream for reading archives
	* created by the <code>XMLEncoder</code> class.
	*
	* @param in the underlying stream.  <code>null</code> may be passed without
	*        error, though the resulting XMLDecoder will be useless
	* @param owner the owner of this stream.  <code>null</code> is a legal
	*        value
	* @param exceptionListener the exception handler for the stream, or
	*        <code>null</code> to use the default
	* @param cl the class loader used for instantiating objects.
	*        <code>null</code> indicates that the default class loader should
	*        be used
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function new(_in : java.io.InputStream, owner : Dynamic, exceptionListener : java.beans.ExceptionListener, cl : java.lang.ClassLoader) : Void;
	
	/**
	* Creates a new decoder to parse XML archives
	* created by the {@code XMLEncoder} class.
	* If the input source {@code is} is {@code null},
	* no exception is thrown and no parsing is performed.
	* This behavior is similar to behavior of other constructors
	* that use {@code InputStream} as a parameter.
	*
	* @param is  the input source to parse
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function new(is : org.xml.sax.InputSource) : Void;
	
	/**
	* This method closes the input stream associated
	* with this stream.
	*/
	@:overload @:public public function close() : Void;
	
	/**
	* Sets the exception handler for this stream to <code>exceptionListener</code>.
	* The exception handler is notified when this stream catches recoverable
	* exceptions.
	*
	* @param exceptionListener The exception handler for this stream;
	* if <code>null</code> the default exception listener will be used.
	*
	* @see #getExceptionListener
	*/
	@:overload @:public public function setExceptionListener(exceptionListener : java.beans.ExceptionListener) : Void;
	
	/**
	* Gets the exception handler for this stream.
	*
	* @return The exception handler for this stream.
	*     Will return the default exception listener if this has not explicitly been set.
	*
	* @see #setExceptionListener
	*/
	@:overload @:public public function getExceptionListener() : java.beans.ExceptionListener;
	
	/**
	* Reads the next object from the underlying input stream.
	*
	* @return the next object read
	*
	* @throws ArrayIndexOutOfBoundsException if the stream contains no objects
	*         (or no more objects)
	*
	* @see XMLEncoder#writeObject
	*/
	@:overload @:public public function readObject() : Dynamic;
	
	/**
	* Sets the owner of this decoder to <code>owner</code>.
	*
	* @param owner The owner of this decoder.
	*
	* @see #getOwner
	*/
	@:overload @:public public function setOwner(owner : Dynamic) : Void;
	
	/**
	* Gets the owner of this decoder.
	*
	* @return The owner of this decoder.
	*
	* @see #setOwner
	*/
	@:overload @:public public function getOwner() : Dynamic;
	
	/**
	* Creates a new handler for SAX parser
	* that can be used to parse embedded XML archives
	* created by the {@code XMLEncoder} class.
	*
	* The {@code owner} should be used if parsed XML document contains
	* the method call within context of the &lt;java&gt; element.
	* The {@code null} value may cause illegal parsing in such case.
	* The same problem may occur, if the {@code owner} class
	* does not contain expected method to call. See details <a
	* href="http://java.sun.com/products/jfc/tsc/articles/persistence3/">here</a>.
	*
	* @param owner  the owner of the default handler
	*               that can be used as a value of &lt;java&gt; element
	* @param el     the exception handler for the parser,
	*               or {@code null} to use the default exception handler
	* @param cl     the class loader used for instantiating objects,
	*               or {@code null} to use the default class loader
	* @return an instance of {@code DefaultHandler} for SAX parser
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createHandler(owner : Dynamic, el : java.beans.ExceptionListener, cl : java.lang.ClassLoader) : org.xml.sax.helpers.DefaultHandler;
	
	
}
