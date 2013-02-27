package javax.xml.bind;
/*
* Copyright (c) 2006, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JAXB
{
	/**
	* Reads in a Java object tree from the given XML input.
	*
	* @param xml
	*      Reads the entire file as XML.
	*/
	@:overload public static function unmarshal<T>(xml : java.io.File, type : Class<T>) : T;
	
	/**
	* Reads in a Java object tree from the given XML input.
	*
	* @param xml
	*      The resource pointed by the URL is read in its entirety.
	*/
	@:overload public static function unmarshal<T>(xml : java.net.URL, type : Class<T>) : T;
	
	/**
	* Reads in a Java object tree from the given XML input.
	*
	* @param xml
	*      The URI is {@link URI#toURL() turned into URL} and then
	*      follows the handling of <tt>URL</tt>.
	*/
	@:overload public static function unmarshal<T>(xml : java.net.URI, type : Class<T>) : T;
	
	/**
	* Reads in a Java object tree from the given XML input.
	*
	* @param xml
	*      The string is first interpreted as an absolute <tt>URI</tt>.
	*      If it's not {@link URI#isAbsolute() a valid absolute URI},
	*      then it's interpreted as a <tt>File</tt>
	*/
	@:overload public static function unmarshal<T>(xml : String, type : Class<T>) : T;
	
	/**
	* Reads in a Java object tree from the given XML input.
	*
	* @param xml
	*      The entire stream is read as an XML infoset.
	*      Upon a successful completion, the stream will be closed by this method.
	*/
	@:overload public static function unmarshal<T>(xml : java.io.InputStream, type : Class<T>) : T;
	
	/**
	* Reads in a Java object tree from the given XML input.
	*
	* @param xml
	*      The character stream is read as an XML infoset.
	*      The encoding declaration in the XML will be ignored.
	*      Upon a successful completion, the stream will be closed by this method.
	*/
	@:overload public static function unmarshal<T>(xml : java.io.Reader, type : Class<T>) : T;
	
	/**
	* Reads in a Java object tree from the given XML input.
	*
	* @param xml
	*      The XML infoset that the {@link Source} represents is read.
	*/
	@:overload public static function unmarshal<T>(xml : javax.xml.transform.Source, type : Class<T>) : T;
	
	/**
	* Writes a Java object tree to XML and store it to the specified location.
	*
	* @param jaxbObject
	*      The Java object to be marshalled into XML. If this object is
	*      a {@link JAXBElement}, it will provide the root tag name and
	*      the body. If this object has {@link XmlRootElement}
	*      on its class definition, that will be used as the root tag name
	*      and the given object will provide the body. Otherwise,
	*      the root tag name is {@link Introspector#decapitalize(String) infered} from
	*      {@link Class#getSimpleName() the short class name}.
	*      This parameter must not be null.
	*
	* @param xml
	*      XML will be written to this file. If it already exists,
	*      it will be overwritten.
	*
	* @throws DataBindingException
	*      If the operation fails, such as due to I/O error, unbindable classes.
	*/
	@:overload public static function marshal(jaxbObject : Dynamic, xml : java.io.File) : Void;
	
	/**
	* Writes a Java object tree to XML and store it to the specified location.
	*
	* @param jaxbObject
	*      The Java object to be marshalled into XML. If this object is
	*      a {@link JAXBElement}, it will provide the root tag name and
	*      the body. If this object has {@link XmlRootElement}
	*      on its class definition, that will be used as the root tag name
	*      and the given object will provide the body. Otherwise,
	*      the root tag name is {@link Introspector#decapitalize(String) infered} from
	*      {@link Class#getSimpleName() the short class name}.
	*      This parameter must not be null.
	*
	* @param xml
	*      The XML will be {@link URLConnection#getOutputStream() sent} to the
	*      resource pointed by this URL. Note that not all <tt>URL</tt>s support
	*      such operation, and exact semantics depends on the <tt>URL</tt>
	*      implementations. In case of {@link HttpURLConnection HTTP URLs},
	*      this will perform HTTP POST.
	*
	* @throws DataBindingException
	*      If the operation fails, such as due to I/O error, unbindable classes.
	*/
	@:overload public static function marshal(jaxbObject : Dynamic, xml : java.net.URL) : Void;
	
	/**
	* Writes a Java object tree to XML and store it to the specified location.
	*
	* @param jaxbObject
	*      The Java object to be marshalled into XML. If this object is
	*      a {@link JAXBElement}, it will provide the root tag name and
	*      the body. If this object has {@link XmlRootElement}
	*      on its class definition, that will be used as the root tag name
	*      and the given object will provide the body. Otherwise,
	*      the root tag name is {@link Introspector#decapitalize(String) infered} from
	*      {@link Class#getSimpleName() the short class name}.
	*      This parameter must not be null.
	*
	* @param xml
	*      The URI is {@link URI#toURL() turned into URL} and then
	*      follows the handling of <tt>URL</tt>. See above.
	*
	* @throws DataBindingException
	*      If the operation fails, such as due to I/O error, unbindable classes.
	*/
	@:overload public static function marshal(jaxbObject : Dynamic, xml : java.net.URI) : Void;
	
	/**
	* Writes a Java object tree to XML and store it to the specified location.
	*
	* @param jaxbObject
	*      The Java object to be marshalled into XML. If this object is
	*      a {@link JAXBElement}, it will provide the root tag name and
	*      the body. If this object has {@link XmlRootElement}
	*      on its class definition, that will be used as the root tag name
	*      and the given object will provide the body. Otherwise,
	*      the root tag name is {@link Introspector#decapitalize(String) infered} from
	*      {@link Class#getSimpleName() the short class name}.
	*      This parameter must not be null.
	*
	* @param xml
	*      The string is first interpreted as an absolute <tt>URI</tt>.
	*      If it's not {@link URI#isAbsolute() a valid absolute URI},
	*      then it's interpreted as a <tt>File</tt>
	*
	* @throws DataBindingException
	*      If the operation fails, such as due to I/O error, unbindable classes.
	*/
	@:overload public static function marshal(jaxbObject : Dynamic, xml : String) : Void;
	
	/**
	* Writes a Java object tree to XML and store it to the specified location.
	*
	* @param jaxbObject
	*      The Java object to be marshalled into XML. If this object is
	*      a {@link JAXBElement}, it will provide the root tag name and
	*      the body. If this object has {@link XmlRootElement}
	*      on its class definition, that will be used as the root tag name
	*      and the given object will provide the body. Otherwise,
	*      the root tag name is {@link Introspector#decapitalize(String) infered} from
	*      {@link Class#getSimpleName() the short class name}.
	*      This parameter must not be null.
	*
	* @param xml
	*      The XML will be sent to the given {@link OutputStream}.
	*      Upon a successful completion, the stream will be closed by this method.
	*
	* @throws DataBindingException
	*      If the operation fails, such as due to I/O error, unbindable classes.
	*/
	@:overload public static function marshal(jaxbObject : Dynamic, xml : java.io.OutputStream) : Void;
	
	/**
	* Writes a Java object tree to XML and store it to the specified location.
	*
	* @param jaxbObject
	*      The Java object to be marshalled into XML. If this object is
	*      a {@link JAXBElement}, it will provide the root tag name and
	*      the body. If this object has {@link XmlRootElement}
	*      on its class definition, that will be used as the root tag name
	*      and the given object will provide the body. Otherwise,
	*      the root tag name is {@link Introspector#decapitalize(String) infered} from
	*      {@link Class#getSimpleName() the short class name}.
	*      This parameter must not be null.
	*
	* @param xml
	*      The XML will be sent as a character stream to the given {@link Writer}.
	*      Upon a successful completion, the stream will be closed by this method.
	*
	* @throws DataBindingException
	*      If the operation fails, such as due to I/O error, unbindable classes.
	*/
	@:overload public static function marshal(jaxbObject : Dynamic, xml : java.io.Writer) : Void;
	
	/**
	* Writes a Java object tree to XML and store it to the specified location.
	*
	* @param jaxbObject
	*      The Java object to be marshalled into XML. If this object is
	*      a {@link JAXBElement}, it will provide the root tag name and
	*      the body. If this object has {@link XmlRootElement}
	*      on its class definition, that will be used as the root tag name
	*      and the given object will provide the body. Otherwise,
	*      the root tag name is {@link Introspector#decapitalize(String) infered} from
	*      {@link Class#getSimpleName() the short class name}.
	*      This parameter must not be null.
	*
	* @param xml
	*      The XML will be sent to the {@link Result} object.
	*
	* @throws DataBindingException
	*      If the operation fails, such as due to I/O error, unbindable classes.
	*/
	@:overload public static function marshal(jaxbObject : Dynamic, xml : javax.xml.transform.Result) : Void;
	
	
}
/**
* To improve the performance, we'll cache the last {@link JAXBContext} used.
*/
@:native('javax$xml$bind$JAXB$Cache') @:internal extern class JAXB_Cache
{
	@:overload public function new(type : Class<Dynamic>) : Void;
	
	
}
