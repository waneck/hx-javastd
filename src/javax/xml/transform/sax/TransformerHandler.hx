package javax.xml.transform.sax;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface TransformerHandler extends org.xml.sax.ContentHandler extends org.xml.sax.ext.LexicalHandler extends org.xml.sax.DTDHandler
{
	/**
	* <p>Set  the <code>Result</code> associated with this
	* <code>TransformerHandler</code> to be used for the transformation.</p>
	*
	* @param result A <code>Result</code> instance, should not be
	*   <code>null</code>.
	*
	* @throws IllegalArgumentException if result is invalid for some reason.
	*/
	@:overload public function setResult(result : javax.xml.transform.Result) : Void;
	
	/**
	* Set the base ID (URI or system ID) from where relative
	* URLs will be resolved.
	* @param systemID Base URI for the source tree.
	*/
	@:overload public function setSystemId(systemID : String) : Void;
	
	/**
	* Get the base ID (URI or system ID) from where relative
	* URLs will be resolved.
	* @return The systemID that was set with {@link #setSystemId}.
	*/
	@:overload public function getSystemId() : String;
	
	/**
	* <p>Get the <code>Transformer</code> associated with this handler, which
	* is needed in order to set parameters and output properties.</p>
	*
	* @return <code>Transformer</code> associated with this
	*   <code>TransformerHandler</code>.
	*/
	@:overload public function getTransformer() : javax.xml.transform.Transformer;
	
	
}
