package java.awt.datatransfer;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DataFlavor implements java.io.Externalizable implements java.lang.Cloneable
{
	/**
	* Tries to load a class from: the bootstrap loader, the system loader,
	* the context loader (if one is present) and finally the loader specified.
	*
	* @param className the name of the class to be loaded
	* @param fallback the fallback loader
	* @return the class loaded
	* @exception ClassNotFoundException if class is not found
	*/
	@:overload @:final private static function tryToLoadClass(className : String, fallback : java.lang.ClassLoader) : Class<Dynamic>;
	
	/**
	* The <code>DataFlavor</code> representing a Java Unicode String class,
	* where:
	* <pre>
	*     representationClass = java.lang.String
	*     mimeType           = "application/x-java-serialized-object"
	* </pre>
	*/
	public static var stringFlavor(default, null) : java.awt.datatransfer.DataFlavor;
	
	/**
	* The <code>DataFlavor</code> representing a Java Image class,
	* where:
	* <pre>
	*     representationClass = java.awt.Image
	*     mimeType            = "image/x-java-image"
	* </pre>
	*/
	public static var imageFlavor(default, null) : java.awt.datatransfer.DataFlavor;
	
	/**
	* The <code>DataFlavor</code> representing plain text with Unicode
	* encoding, where:
	* <pre>
	*     representationClass = InputStream
	*     mimeType            = "text/plain; charset=unicode"
	* </pre>
	* This <code>DataFlavor</code> has been <b>deprecated</b> because
	* (1) Its representation is an InputStream, an 8-bit based representation,
	* while Unicode is a 16-bit character set; and (2) The charset "unicode"
	* is not well-defined. "unicode" implies a particular platform's
	* implementation of Unicode, not a cross-platform implementation.
	*
	* @deprecated as of 1.3. Use <code>DataFlavor.getReaderForText(Transferable)</code>
	*             instead of <code>Transferable.getTransferData(DataFlavor.plainTextFlavor)</code>.
	*/
	public static var plainTextFlavor(default, null) : java.awt.datatransfer.DataFlavor;
	
	/**
	* A MIME Content-Type of application/x-java-serialized-object represents
	* a graph of Java object(s) that have been made persistent.
	*
	* The representation class associated with this <code>DataFlavor</code>
	* identifies the Java type of an object returned as a reference
	* from an invocation <code>java.awt.datatransfer.getTransferData</code>.
	*/
	public static var javaSerializedObjectMimeType(default, null) : String;
	
	/**
	* To transfer a list of files to/from Java (and the underlying
	* platform) a <code>DataFlavor</code> of this type/subtype and
	* representation class of <code>java.util.List</code> is used.
	* Each element of the list is required/guaranteed to be of type
	* <code>java.io.File</code>.
	*/
	public static var javaFileListFlavor(default, null) : java.awt.datatransfer.DataFlavor;
	
	/**
	* To transfer a reference to an arbitrary Java object reference that
	* has no associated MIME Content-type, across a <code>Transferable</code>
	* interface WITHIN THE SAME JVM, a <code>DataFlavor</code>
	* with this type/subtype is used, with a <code>representationClass</code>
	* equal to the type of the class/interface being passed across the
	* <code>Transferable</code>.
	* <p>
	* The object reference returned from
	* <code>Transferable.getTransferData</code> for a <code>DataFlavor</code>
	* with this MIME Content-Type is required to be
	* an instance of the representation Class of the <code>DataFlavor</code>.
	*/
	public static var javaJVMLocalObjectMimeType(default, null) : String;
	
	/**
	* In order to pass a live link to a Remote object via a Drag and Drop
	* <code>ACTION_LINK</code> operation a Mime Content Type of
	* application/x-java-remote-object should be used,
	* where the representation class of the <code>DataFlavor</code>
	* represents the type of the <code>Remote</code> interface to be
	* transferred.
	*/
	public static var javaRemoteObjectMimeType(default, null) : String;
	
	/**
	* Constructs a new <code>DataFlavor</code>.  This constructor is
	* provided only for the purpose of supporting the
	* <code>Externalizable</code> interface.  It is not
	* intended for public (client) use.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public function new() : Void;
	
	/**
	* Constructs a <code>DataFlavor</code> that represents a Java class.
	* <p>
	* The returned <code>DataFlavor</code> will have the following
	* characteristics:
	* <pre>
	*    representationClass = representationClass
	*    mimeType            = application/x-java-serialized-object
	* </pre>
	* @param representationClass the class used to transfer data in this flavor
	* @param humanPresentableName the human-readable string used to identify
	*                 this flavor; if this parameter is <code>null</code>
	*                 then the value of the the MIME Content Type is used
	* @exception NullPointerException if <code>representationClass</code> is null
	*/
	@:overload public function new(representationClass : Class<Dynamic>, humanPresentableName : String) : Void;
	
	/**
	* Constructs a <code>DataFlavor</code> that represents a
	* <code>MimeType</code>.
	* <p>
	* The returned <code>DataFlavor</code> will have the following
	* characteristics:
	* <p>
	* If the <code>mimeType</code> is
	* "application/x-java-serialized-object; class=&lt;representation class&gt;",
	* the result is the same as calling
	* <code>new DataFlavor(Class:forName(&lt;representation class&gt;)</code>.
	* <p>
	* Otherwise:
	* <pre>
	*     representationClass = InputStream
	*     mimeType            = mimeType
	* </pre>
	* @param mimeType the string used to identify the MIME type for this flavor;
	*                 if the the <code>mimeType</code> does not specify a
	*                 "class=" parameter, or if the class is not successfully
	*                 loaded, then an <code>IllegalArgumentException</code>
	*                 is thrown
	* @param humanPresentableName the human-readable string used to identify
	*                 this flavor; if this parameter is <code>null</code>
	*                 then the value of the the MIME Content Type is used
	* @exception IllegalArgumentException if <code>mimeType</code> is
	*                 invalid or if the class is not successfully loaded
	* @exception NullPointerException if <code>mimeType</code> is null
	*/
	@:overload public function new(mimeType : String, humanPresentableName : String) : Void;
	
	/**
	* Constructs a <code>DataFlavor</code> that represents a
	* <code>MimeType</code>.
	* <p>
	* The returned <code>DataFlavor</code> will have the following
	* characteristics:
	* <p>
	* If the mimeType is
	* "application/x-java-serialized-object; class=&lt;representation class&gt;",
	* the result is the same as calling
	* <code>new DataFlavor(Class:forName(&lt;representation class&gt;)</code>.
	* <p>
	* Otherwise:
	* <pre>
	*     representationClass = InputStream
	*     mimeType            = mimeType
	* </pre>
	* @param mimeType the string used to identify the MIME type for this flavor
	* @param humanPresentableName the human-readable string used to
	*          identify this flavor
	* @param classLoader the class loader to use
	* @exception ClassNotFoundException if the class is not loaded
	* @exception IllegalArgumentException if <code>mimeType</code> is
	*                 invalid
	* @exception NullPointerException if <code>mimeType</code> is null
	*/
	@:overload public function new(mimeType : String, humanPresentableName : String, classLoader : java.lang.ClassLoader) : Void;
	
	/**
	* Constructs a <code>DataFlavor</code> from a <code>mimeType</code> string.
	* The string can specify a "class=<fully specified Java class name>"
	* parameter to create a <code>DataFlavor</code> with the desired
	* representation class. If the string does not contain "class=" parameter,
	* <code>java.io.InputStream</code> is used as default.
	*
	* @param mimeType the string used to identify the MIME type for this flavor;
	*                 if the class specified by "class=" parameter is not
	*                 successfully loaded, then an
	*                 <code>ClassNotFoundException</code> is thrown
	* @exception ClassNotFoundException if the class is not loaded
	* @exception IllegalArgumentException if <code>mimeType</code> is
	*                 invalid
	* @exception NullPointerException if <code>mimeType</code> is null
	*/
	@:overload public function new(mimeType : String) : Void;
	
	/**
	* String representation of this <code>DataFlavor</code> and its
	* parameters. The resulting <code>String</code> contains the name of
	* the <code>DataFlavor</code> class, this flavor's MIME type, and its
	* representation class. If this flavor has a primary MIME type of "text",
	* supports the charset parameter, and has an encoded representation, the
	* flavor's charset is also included. See <code>selectBestTextFlavor</code>
	* for a list of text flavors which support the charset parameter.
	*
	* @return  string representation of this <code>DataFlavor</code>
	* @see #selectBestTextFlavor
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a <code>DataFlavor</code> representing plain text with Unicode
	* encoding, where:
	* <pre>
	*     representationClass = java.io.InputStream
	*     mimeType            = "text/plain;
	*                            charset=&lt;platform default Unicode encoding&gt;"
	* </pre>
	* Sun's implementation for Microsoft Windows uses the encoding <code>utf-16le</code>.
	* Sun's implementation for Solaris and Linux uses the encoding
	* <code>iso-10646-ucs-2</code>.
	*
	* @return a <code>DataFlavor</code> representing plain text
	*    with Unicode encoding
	* @since 1.3
	*/
	@:require(java3) @:overload @:final public static function getTextPlainUnicodeFlavor() : java.awt.datatransfer.DataFlavor;
	
	/**
	* Selects the best text <code>DataFlavor</code> from an array of <code>
	* DataFlavor</code>s. Only <code>DataFlavor.stringFlavor</code>, and
	* equivalent flavors, and flavors that have a primary MIME type of "text",
	* are considered for selection.
	* <p>
	* Flavors are first sorted by their MIME types in the following order:
	* <ul>
	* <li>"text/sgml"
	* <li>"text/xml"
	* <li>"text/html"
	* <li>"text/rtf"
	* <li>"text/enriched"
	* <li>"text/richtext"
	* <li>"text/uri-list"
	* <li>"text/tab-separated-values"
	* <li>"text/t140"
	* <li>"text/rfc822-headers"
	* <li>"text/parityfec"
	* <li>"text/directory"
	* <li>"text/css"
	* <li>"text/calendar"
	* <li>"application/x-java-serialized-object"
	* <li>"text/plain"
	* <li>"text/&lt;other&gt;"
	* </ul>
	* <p>For example, "text/sgml" will be selected over
	* "text/html", and <code>DataFlavor.stringFlavor</code> will be chosen
	* over <code>DataFlavor.plainTextFlavor</code>.
	* <p>
	* If two or more flavors share the best MIME type in the array, then that
	* MIME type will be checked to see if it supports the charset parameter.
	* <p>
	* The following MIME types support, or are treated as though they support,
	* the charset parameter:
	* <ul>
	* <li>"text/sgml"
	* <li>"text/xml"
	* <li>"text/html"
	* <li>"text/enriched"
	* <li>"text/richtext"
	* <li>"text/uri-list"
	* <li>"text/directory"
	* <li>"text/css"
	* <li>"text/calendar"
	* <li>"application/x-java-serialized-object"
	* <li>"text/plain"
	* </ul>
	* The following MIME types do not support, or are treated as though they
	* do not support, the charset parameter:
	* <ul>
	* <li>"text/rtf"
	* <li>"text/tab-separated-values"
	* <li>"text/t140"
	* <li>"text/rfc822-headers"
	* <li>"text/parityfec"
	* </ul>
	* For "text/&lt;other&gt;" MIME types, the first time the JRE needs to
	* determine whether the MIME type supports the charset parameter, it will
	* check whether the parameter is explicitly listed in an arbitrarily
	* chosen <code>DataFlavor</code> which uses that MIME type. If so, the JRE
	* will assume from that point on that the MIME type supports the charset
	* parameter and will not check again. If the parameter is not explicitly
	* listed, the JRE will assume from that point on that the MIME type does
	* not support the charset parameter and will not check again. Because
	* this check is performed on an arbitrarily chosen
	* <code>DataFlavor</code>, developers must ensure that all
	* <code>DataFlavor</code>s with a "text/&lt;other&gt;" MIME type specify
	* the charset parameter if it is supported by that MIME type. Developers
	* should never rely on the JRE to substitute the platform's default
	* charset for a "text/&lt;other&gt;" DataFlavor. Failure to adhere to this
	* restriction will lead to undefined behavior.
	* <p>
	* If the best MIME type in the array does not support the charset
	* parameter, the flavors which share that MIME type will then be sorted by
	* their representation classes in the following order:
	* <code>java.io.InputStream</code>, <code>java.nio.ByteBuffer</code>,
	* <code>[B</code>, &lt;all others&gt;.
	* <p>
	* If two or more flavors share the best representation class, or if no
	* flavor has one of the three specified representations, then one of those
	* flavors will be chosen non-deterministically.
	* <p>
	* If the best MIME type in the array does support the charset parameter,
	* the flavors which share that MIME type will then be sorted by their
	* representation classes in the following order:
	* <code>java.io.Reader</code>, <code>java.lang.String</code>,
	* <code>java.nio.CharBuffer</code>, <code>[C</code>, &lt;all others&gt;.
	* <p>
	* If two or more flavors share the best representation class, and that
	* representation is one of the four explicitly listed, then one of those
	* flavors will be chosen non-deterministically. If, however, no flavor has
	* one of the four specified representations, the flavors will then be
	* sorted by their charsets. Unicode charsets, such as "UTF-16", "UTF-8",
	* "UTF-16BE", "UTF-16LE", and their aliases, are considered best. After
	* them, the platform default charset and its aliases are selected.
	* "US-ASCII" and its aliases are worst. All other charsets are chosen in
	* alphabetical order, but only charsets supported by this implementation
	* of the Java platform will be considered.
	* <p>
	* If two or more flavors share the best charset, the flavors will then
	* again be sorted by their representation classes in the following order:
	* <code>java.io.InputStream</code>, <code>java.nio.ByteBuffer</code>,
	* <code>[B</code>, &lt;all others&gt;.
	* <p>
	* If two or more flavors share the best representation class, or if no
	* flavor has one of the three specified representations, then one of those
	* flavors will be chosen non-deterministically.
	*
	* @param availableFlavors an array of available <code>DataFlavor</code>s
	* @return the best (highest fidelity) flavor according to the rules
	*         specified above, or <code>null</code>,
	*         if <code>availableFlavors</code> is <code>null</code>,
	*         has zero length, or contains no text flavors
	* @since 1.3
	*/
	@:require(java3) @:overload @:final public static function selectBestTextFlavor(availableFlavors : java.NativeArray<java.awt.datatransfer.DataFlavor>) : java.awt.datatransfer.DataFlavor;
	
	/**
	* Gets a Reader for a text flavor, decoded, if necessary, for the expected
	* charset (encoding). The supported representation classes are
	* <code>java.io.Reader</code>, <code>java.lang.String</code>,
	* <code>java.nio.CharBuffer</code>, <code>[C</code>,
	* <code>java.io.InputStream</code>, <code>java.nio.ByteBuffer</code>,
	* and <code>[B</code>.
	* <p>
	* Because text flavors which do not support the charset parameter are
	* encoded in a non-standard format, this method should not be called for
	* such flavors. However, in order to maintain backward-compatibility,
	* if this method is called for such a flavor, this method will treat the
	* flavor as though it supports the charset parameter and attempt to
	* decode it accordingly. See <code>selectBestTextFlavor</code> for a list
	* of text flavors which do not support the charset parameter.
	*
	* @param transferable the <code>Transferable</code> whose data will be
	*        requested in this flavor
	*
	* @return a <code>Reader</code> to read the <code>Transferable</code>'s
	*         data
	*
	* @exception IllegalArgumentException if the representation class
	*            is not one of the seven listed above
	* @exception IllegalArgumentException if the <code>Transferable</code>
	*            has <code>null</code> data
	* @exception NullPointerException if the <code>Transferable</code> is
	*            <code>null</code>
	* @exception UnsupportedEncodingException if this flavor's representation
	*            is <code>java.io.InputStream</code>,
	*            <code>java.nio.ByteBuffer</code>, or <code>[B</code> and
	*            this flavor's encoding is not supported by this
	*            implementation of the Java platform
	* @exception UnsupportedFlavorException if the <code>Transferable</code>
	*            does not support this flavor
	* @exception IOException if the data cannot be read because of an
	*            I/O error
	* @see #selectBestTextFlavor
	* @since 1.3
	*/
	@:require(java3) @:overload public function getReaderForText(transferable : java.awt.datatransfer.Transferable) : java.io.Reader;
	
	/**
	* Returns the MIME type string for this <code>DataFlavor</code>.
	* @return the MIME type string for this flavor
	*/
	@:overload public function getMimeType() : String;
	
	/**
	* Returns the <code>Class</code> which objects supporting this
	* <code>DataFlavor</code> will return when this <code>DataFlavor</code>
	* is requested.
	* @return the <code>Class</code> which objects supporting this
	* <code>DataFlavor</code> will return when this <code>DataFlavor</code>
	* is requested
	*/
	@:overload public function getRepresentationClass() : Class<Dynamic>;
	
	/**
	* Returns the human presentable name for the data format that this
	* <code>DataFlavor</code> represents.  This name would be localized
	* for different countries.
	* @return the human presentable name for the data format that this
	*    <code>DataFlavor</code> represents
	*/
	@:overload public function getHumanPresentableName() : String;
	
	/**
	* Returns the primary MIME type for this <code>DataFlavor</code>.
	* @return the primary MIME type of this <code>DataFlavor</code>
	*/
	@:overload public function getPrimaryType() : String;
	
	/**
	* Returns the sub MIME type of this <code>DataFlavor</code>.
	* @return the Sub MIME type of this <code>DataFlavor</code>
	*/
	@:overload public function getSubType() : String;
	
	/**
	* Returns the human presentable name for this <code>DataFlavor</code>
	* if <code>paramName</code> equals "humanPresentableName".  Otherwise
	* returns the MIME type value associated with <code>paramName</code>.
	*
	* @param paramName the parameter name requested
	* @return the value of the name parameter, or <code>null</code>
	*  if there is no associated value
	*/
	@:overload public function getParameter(paramName : String) : String;
	
	/**
	* Sets the human presentable name for the data format that this
	* <code>DataFlavor</code> represents. This name would be localized
	* for different countries.
	* @param humanPresentableName the new human presentable name
	*/
	@:overload public function setHumanPresentableName(humanPresentableName : String) : Void;
	
	/**
	* {@inheritDoc}
	* <p>
	* The equals comparison for the {@code DataFlavor} class is implemented
	* as follows: Two <code>DataFlavor</code>s are considered equal if and
	* only if their MIME primary type and subtype and representation class are
	* equal. Additionally, if the primary type is "text", the subtype denotes
	* a text flavor which supports the charset parameter, and the
	* representation class is not <code>java.io.Reader</code>,
	* <code>java.lang.String</code>, <code>java.nio.CharBuffer</code>, or
	* <code>[C</code>, the <code>charset</code> parameter must also be equal.
	* If a charset is not explicitly specified for one or both
	* <code>DataFlavor</code>s, the platform default encoding is assumed. See
	* <code>selectBestTextFlavor</code> for a list of text flavors which
	* support the charset parameter.
	*
	* @param o the <code>Object</code> to compare with <code>this</code>
	* @return <code>true</code> if <code>that</code> is equivalent to this
	*         <code>DataFlavor</code>; <code>false</code> otherwise
	* @see #selectBestTextFlavor
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* This method has the same behavior as {@link #equals(Object)}.
	* The only difference being that it takes a {@code DataFlavor} instance
	* as a parameter.
	*
	* @param that the <code>DataFlavor</code> to compare with
	*        <code>this</code>
	* @return <code>true</code> if <code>that</code> is equivalent to this
	*         <code>DataFlavor</code>; <code>false</code> otherwise
	* @see #selectBestTextFlavor
	*/
	@:overload public function equals(that : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Compares only the <code>mimeType</code> against the passed in
	* <code>String</code> and <code>representationClass</code> is
	* not considered in the comparison.
	*
	* If <code>representationClass</code> needs to be compared, then
	* <code>equals(new DataFlavor(s))</code> may be used.
	* @deprecated As inconsistent with <code>hashCode()</code> contract,
	*             use <code>isMimeTypeEqual(String)</code> instead.
	* @param s the {@code mimeType} to compare.
	* @return true if the String (MimeType) is equal; false otherwise or if
	*         {@code s} is {@code null}
	*/
	@:overload public function equals(s : String) : Bool;
	
	/**
	* Returns hash code for this <code>DataFlavor</code>.
	* For two equal <code>DataFlavor</code>s, hash codes are equal.
	* For the <code>String</code>
	* that matches <code>DataFlavor.equals(String)</code>, it is not
	* guaranteed that <code>DataFlavor</code>'s hash code is equal
	* to the hash code of the <code>String</code>.
	*
	* @return a hash code for this <code>DataFlavor</code>
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Identical to {@link #equals(DataFlavor)}.
	*
	* @param that the <code>DataFlavor</code> to compare with
	*        <code>this</code>
	* @return <code>true</code> if <code>that</code> is equivalent to this
	*         <code>DataFlavor</code>; <code>false</code> otherwise
	* @see #selectBestTextFlavor
	* @since 1.3
	*/
	@:require(java3) @:overload public function match(that : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Returns whether the string representation of the MIME type passed in
	* is equivalent to the MIME type of this <code>DataFlavor</code>.
	* Parameters are not included in the comparison.
	*
	* @param mimeType the string representation of the MIME type
	* @return true if the string representation of the MIME type passed in is
	*         equivalent to the MIME type of this <code>DataFlavor</code>;
	*         false otherwise
	* @throws NullPointerException if mimeType is <code>null</code>
	*/
	@:overload public function isMimeTypeEqual(mimeType : String) : Bool;
	
	/**
	* Compares the <code>mimeType</code> of two <code>DataFlavor</code>
	* objects. No parameters are considered.
	*
	* @param dataFlavor the <code>DataFlavor</code> to be compared
	* @return true if the <code>MimeType</code>s are equal,
	*  otherwise false
	*/
	@:overload @:final public function isMimeTypeEqual(dataFlavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Does the <code>DataFlavor</code> represent a serialized object?
	*/
	@:overload public function isMimeTypeSerializedObject() : Bool;
	
	@:overload @:final public function getDefaultRepresentationClass() : Class<Dynamic>;
	
	@:overload @:final public function getDefaultRepresentationClassAsString() : String;
	
	/**
	* Does the <code>DataFlavor</code> represent a
	* <code>java.io.InputStream</code>?
	*/
	@:overload public function isRepresentationClassInputStream() : Bool;
	
	/**
	* Returns whether the representation class for this
	* <code>DataFlavor</code> is <code>java.io.Reader</code> or a subclass
	* thereof.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function isRepresentationClassReader() : Bool;
	
	/**
	* Returns whether the representation class for this
	* <code>DataFlavor</code> is <code>java.nio.CharBuffer</code> or a
	* subclass thereof.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function isRepresentationClassCharBuffer() : Bool;
	
	/**
	* Returns whether the representation class for this
	* <code>DataFlavor</code> is <code>java.nio.ByteBuffer</code> or a
	* subclass thereof.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function isRepresentationClassByteBuffer() : Bool;
	
	/**
	* Returns true if the representation class can be serialized.
	* @return true if the representation class can be serialized
	*/
	@:overload public function isRepresentationClassSerializable() : Bool;
	
	/**
	* Returns true if the representation class is <code>Remote</code>.
	* @return true if the representation class is <code>Remote</code>
	*/
	@:overload public function isRepresentationClassRemote() : Bool;
	
	/**
	* Returns true if the <code>DataFlavor</code> specified represents
	* a serialized object.
	* @return true if the <code>DataFlavor</code> specified represents
	*   a Serialized Object
	*/
	@:overload public function isFlavorSerializedObjectType() : Bool;
	
	/**
	* Returns true if the <code>DataFlavor</code> specified represents
	* a remote object.
	* @return true if the <code>DataFlavor</code> specified represents
	*  a Remote Object
	*/
	@:overload public function isFlavorRemoteObjectType() : Bool;
	
	/**
	* Returns true if the <code>DataFlavor</code> specified represents
	* a list of file objects.
	* @return true if the <code>DataFlavor</code> specified represents
	*   a List of File objects
	*/
	@:overload public function isFlavorJavaFileListType() : Bool;
	
	/**
	* Returns whether this <code>DataFlavor</code> is a valid text flavor for
	* this implementation of the Java platform. Only flavors equivalent to
	* <code>DataFlavor.stringFlavor</code> and <code>DataFlavor</code>s with
	* a primary MIME type of "text" can be valid text flavors.
	* <p>
	* If this flavor supports the charset parameter, it must be equivalent to
	* <code>DataFlavor.stringFlavor</code>, or its representation must be
	* <code>java.io.Reader</code>, <code>java.lang.String</code>,
	* <code>java.nio.CharBuffer</code>, <code>[C</code>,
	* <code>java.io.InputStream</code>, <code>java.nio.ByteBuffer</code>, or
	* <code>[B</code>. If the representation is
	* <code>java.io.InputStream</code>, <code>java.nio.ByteBuffer</code>, or
	* <code>[B</code>, then this flavor's <code>charset</code> parameter must
	* be supported by this implementation of the Java platform. If a charset
	* is not specified, then the platform default charset, which is always
	* supported, is assumed.
	* <p>
	* If this flavor does not support the charset parameter, its
	* representation must be <code>java.io.InputStream</code>,
	* <code>java.nio.ByteBuffer</code>, or <code>[B</code>.
	* <p>
	* See <code>selectBestTextFlavor</code> for a list of text flavors which
	* support the charset parameter.
	*
	* @return <code>true</code> if this <code>DataFlavor</code> is a valid
	*         text flavor as described above; <code>false</code> otherwise
	* @see #selectBestTextFlavor
	* @since 1.4
	*/
	@:require(java4) @:overload public function isFlavorTextType() : Bool;
	
	/**
	* Serializes this <code>DataFlavor</code>.
	*/
	@:overload @:synchronized public function writeExternal(os : java.io.ObjectOutput) : Void;
	
	/**
	* Restores this <code>DataFlavor</code> from a Serialized state.
	*/
	@:overload @:synchronized public function readExternal(is : java.io.ObjectInput) : Void;
	
	/**
	* Returns a clone of this <code>DataFlavor</code>.
	* @return a clone of this <code>DataFlavor</code>
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Called on <code>DataFlavor</code> for every MIME Type parameter
	* to allow <code>DataFlavor</code> subclasses to handle special
	* parameters like the text/plain <code>charset</code>
	* parameters, whose values are case insensitive.  (MIME type parameter
	* values are supposed to be case sensitive.
	* <p>
	* This method is called for each parameter name/value pair and should
	* return the normalized representation of the <code>parameterValue</code>.
	*
	* This method is never invoked by this implementation from 1.1 onwards.
	*
	* @deprecated
	*/
	@:overload private function normalizeMimeTypeParameter(parameterName : String, parameterValue : String) : String;
	
	/**
	* Called for each MIME type string to give <code>DataFlavor</code> subtypes
	* the opportunity to change how the normalization of MIME types is
	* accomplished.  One possible use would be to add default
	* parameter/value pairs in cases where none are present in the MIME
	* type string passed in.
	*
	* This method is never invoked by this implementation from 1.1 onwards.
	*
	* @deprecated
	*/
	@:overload private function normalizeMimeType(mimeType : String) : String;
	
	
}
@:native('java$awt$datatransfer$DataFlavor$TextFlavorComparator') @:internal extern class DataFlavor_TextFlavorComparator extends sun.awt.datatransfer.DataTransferer.DataTransferer_DataFlavorComparator
{
	/**
	* Compares two <code>DataFlavor</code> objects. Returns a negative
	* integer, zero, or a positive integer as the first
	* <code>DataFlavor</code> is worse than, equal to, or better than the
	* second.
	* <p>
	* <code>DataFlavor</code>s are ordered according to the rules outlined
	* for <code>selectBestTextFlavor</code>.
	*
	* @param obj1 the first <code>DataFlavor</code> to be compared
	* @param obj2 the second <code>DataFlavor</code> to be compared
	* @return a negative integer, zero, or a positive integer as the first
	*         argument is worse, equal to, or better than the second
	* @throws ClassCastException if either of the arguments is not an
	*         instance of <code>DataFlavor</code>
	* @throws NullPointerException if either of the arguments is
	*         <code>null</code>
	*
	* @see #selectBestTextFlavor
	*/
	@:overload override public function compare(obj1 : Dynamic, obj2 : Dynamic) : Int;
	
	
}
