package com.sun.xml.internal.org.jvnet.staxex;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface XMLStreamReaderEx extends javax.xml.stream.XMLStreamReader
{
	/**
	* Works like {@link #getText()}
	* but hides the actual data representation.
	*
	* @return
	*      The {@link CharSequence} that represents the
	*      character infoset items at the current position.
	*
	*      <p>
	*      The {@link CharSequence} is normally a {@link String},
	*      but can be any other {@link CharSequence} implementation.
	*      For binary data, however, use of {@link Base64Data} is
	*      recommended (so that the consumer interested in seeing it
	*      as binary data may take advantage of mor efficient
	*      data representation.)
	*
	*      <p>
	*      The object returned from this method belongs to the parser,
	*      and its content is guaranteed to be the same only until
	*      the {@link #next()} method is invoked.
	*
	* @throws IllegalStateException
	*      if the parser is not pointing at characters infoset item.
	*
	* TODO:
	*      fix the dependency to JAXB internal class.
	*/
	@:overload public function getPCDATA() : java.lang.CharSequence;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getNamespaceContext() : com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx;
	
	/**
	* Works like {@link #getElementText()} but trims the leading
	* and trailing whitespace.
	*
	* <p>
	* The parser can often do this more efficiently than
	* {@code getElementText().trim()}.
	*
	* @see #getElementText()
	*/
	@:overload public function getElementTextTrim() : String;
	
	
}
