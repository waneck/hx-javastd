package javax.xml.bind.attachment;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AttachmentUnmarshaller
{
	/**
	* <p>Lookup MIME content by content-id, <code>cid</code>, and return as a {@link DataHandler}.</p>
	*
	* <p>The returned <code>DataHandler</code> instance must be configured
	* to meet the following required mapping constaint.
	* <table border="2" rules="all" cellpadding="4">
	*   <thead>
	*     <tr>
	*       <th align="center" colspan="2">
	*       Required Mappings between MIME and Java Types
	*       </tr>
	*     <tr>
	*       <th>MIME Type</th>
	*       <th>Java Type</th>
	*     </tr>
	*     <tr>
	*       <th><code>DataHandler.getContentType()</code></th>
	*       <th><code>instanceof DataHandler.getContent()</code></th>
	*     </tr>
	*   </thead>
	*   <tbody>
	*     <tr>
	*       <td>image/gif</td>
	*       <td>java.awt.Image</td>
	*     </tr>
	*     <tr>
	*       <td>image/jpeg</td>
	*       <td>java.awt.Image</td>
	*     </tr>
	*     <tr>
	*       <td>text/xml  or application/xml</td>
	*       <td>javax.xml.transform.Source</td>
	*     </tr>
	*   </tbody>
	*  </table>
	* Note that it is allowable to support additional mappings.</p>
	*
	* @param cid It is expected to be a valid lexical form of the XML Schema
	* <code>xs:anyURI</code> datatype. If <code>{@link #isXOPPackage()}
	* ==true</code>, it must be a valid URI per the <code>cid:</code> URI scheme (see <a href="http://www.ietf.org/rfc/rfc2387.txt">RFC 2387</a>)
	*
	* @return
	*       a {@link DataHandler} that represents the MIME attachment.
	*
	* @throws IllegalArgumentException if the attachment for the given cid is not found.
	*/
	@:overload @:public @:abstract public function getAttachmentAsDataHandler(cid : String) : javax.activation.DataHandler;
	
	/**
	* <p>Retrieve the attachment identified by content-id, <code>cid</code>,  as a <tt>byte[]</tt></p>.
	*
	* @param cid It is expected to be a valid lexical form of the XML Schema
	* <code>xs:anyURI</code> datatype. If <code>{@link #isXOPPackage()}
	* ==true</code>, it must be a valid URI per the <code>cid:</code> URI scheme (see <a href="http://www.ietf.org/rfc/rfc2387.txt">RFC 2387</a>)
	*
	* @return byte[] representation of attachment identified by cid.
	*
	* @throws IllegalArgumentException if the attachment for the given cid is not found.
	*/
	@:overload @:public @:abstract public function getAttachmentAsByteArray(cid : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* <p>Read-only property that returns true if JAXB unmarshaller needs to perform XOP processing.</p>
	*
	* <p>This method returns <code>true</code> when the constraints specified
	* in  <a href="http://www.w3.org/TR/2005/REC-xop10-20050125/#identifying_xop_documents">Identifying XOP Documents</a> are met.
	* This value must not change during the unmarshalling process.</p>
	*
	* @return true when MIME context is a XOP Document.
	*/
	@:overload @:public public function isXOPPackage() : Bool;
	
	
}
