package javax.print;
/*
* Copyright (c) 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class SimpleDoc implements javax.print.Doc
{
	/**
	* Constructs a <code>SimpleDoc</code> with the specified
	* print data, doc flavor and doc attribute set.
	* @param printData the print data object
	* @param flavor the <code>DocFlavor</code> object
	* @param attributes a <code>DocAttributeSet</code>, which can
	*                   be <code>null</code>
	* @throws IllegalArgumentException if <code>flavor</code> or
	*         <code>printData</code> is <code>null</code>, or the
	*         <code>printData</code> does not correspond
	*         to the specified doc flavor--for example, the data is
	*         not of the type specified as the representation in the
	*         <code>DocFlavor</code>.
	*/
	@:overload public function new(printData : Dynamic, flavor : javax.print.DocFlavor, attributes : javax.print.attribute.DocAttributeSet) : Void;
	
	/**
	* Determines the doc flavor in which this doc object will supply its
	* piece of print data.
	*
	* @return  Doc flavor.
	*/
	@:overload public function getDocFlavor() : javax.print.DocFlavor;
	
	/**
	* Obtains the set of printing attributes for this doc object. If the
	* returned attribute set includes an instance of a particular attribute
	* <I>X,</I> the printer must use that attribute value for this doc,
	* overriding any value of attribute <I>X</I> in the job's attribute set.
	* If the returned attribute set does not include an instance
	* of a particular attribute <I>X</I> or if null is returned, the printer
	* must consult the job's attribute set to obtain the value for
	* attribute <I>X,</I> and if not found there, the printer must use an
	* implementation-dependent default value. The returned attribute set is
	* unmodifiable.
	*
	* @return  Unmodifiable set of printing attributes for this doc, or null
	*          to obtain all attribute values from the job's attribute
	*          set.
	*/
	@:overload public function getAttributes() : javax.print.attribute.DocAttributeSet;
	
	/*
	* Obtains the print data representation object that contains this doc
	* object's piece of print data in the format corresponding to the
	* supported doc flavor.
	* The <CODE>getPrintData()</CODE> method returns an instance of
	* the representation class whose name is given by
	* {@link DocFlavor#getRepresentationClassName() getRepresentationClassName},
	* and the return value can be cast
	* from class Object to that representation class.
	*
	* @return  Print data representation object.
	*
	* @exception  IOException if the representation class is a stream and
	*     there was an I/O error while constructing the stream.
	*/
	@:overload public function getPrintData() : Dynamic;
	
	/**
	* Obtains a reader for extracting character print data from this doc.
	* The <code>Doc</code> implementation is required to support this
	* method if the <code>DocFlavor</code> has one of the following print
	* data representation classes, and return <code>null</code>
	* otherwise:
	* <UL>
	* <LI> <code>char[]</code>
	* <LI> <code>java.lang.String</code>
	* <LI> <code>java.io.Reader</code>
	* </UL>
	* The doc's print data representation object is used to construct and
	* return a <code>Reader</code> for reading the print data as a stream
	* of characters from the print data representation object.
	* However, if the print data representation object is itself a
	* <code>Reader</code> then the print data representation object is
	* simply returned.
	* <P>
	* @return  a <code>Reader</code> for reading the print data
	*          characters from this doc.
	*          If a reader cannot be provided because this doc does not meet
	*          the criteria stated above, <code>null</code> is returned.
	*
	* @exception  IOException if there was an I/O error while creating
	*             the reader.
	*/
	@:overload public function getReaderForText() : java.io.Reader;
	
	/**
	* Obtains an input stream for extracting byte print data from
	* this doc.
	* The <code>Doc</code> implementation is required to support this
	* method if the <code>DocFlavor</code> has one of the following print
	* data representation classes; otherwise this method
	* returns <code>null</code>:
	* <UL>
	* <LI> <code>byte[]</code>
	* <LI> <code>java.io.InputStream</code>
	* </UL>
	* The doc's print data representation object is obtained.  Then, an
	* input stream for reading the print data
	* from the print data representation object as a stream of bytes is
	* created and returned.
	* However, if the print data representation object is itself an
	* input stream then the print data representation object is simply
	* returned.
	* <P>
	* @return  an <code>InputStream</code> for reading the print data
	*          bytes from this doc.  If an input stream cannot be
	*          provided because this doc does not meet
	*          the criteria stated above, <code>null</code> is returned.
	*
	* @exception  IOException
	*     if there was an I/O error while creating the input stream.
	*/
	@:overload public function getStreamForBytes() : java.io.InputStream;
	
	
}
