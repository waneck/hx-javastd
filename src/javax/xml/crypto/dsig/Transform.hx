package javax.xml.crypto.dsig;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
* $Id: Transform.java,v 1.5 2005/05/10 16:03:48 mullan Exp $
*/
extern interface Transform extends javax.xml.crypto.XMLStructure extends javax.xml.crypto.AlgorithmMethod
{
	/**
	* Returns the algorithm-specific input parameters associated with this
	* <code>Transform</code>.
	* <p>
	* The returned parameters can be typecast to a
	* {@link TransformParameterSpec} object.
	*
	* @return the algorithm-specific input parameters (may be <code>null</code>
	*    if not specified)
	*/
	@:overload @:public public function getParameterSpec() : java.security.spec.AlgorithmParameterSpec;
	
	/**
	* Transforms the specified data using the underlying transform algorithm.
	*
	* @param data the data to be transformed
	* @param context the <code>XMLCryptoContext</code> containing
	*    additional context (may be <code>null</code> if not applicable)
	* @return the transformed data
	* @throws NullPointerException if <code>data</code> is <code>null</code>
	* @throws TransformException if an error occurs while executing the
	*    transform
	*/
	@:overload @:public @:abstract public function transform(data : javax.xml.crypto.Data, context : javax.xml.crypto.XMLCryptoContext) : javax.xml.crypto.Data;
	
	/**
	* Transforms the specified data using the underlying transform algorithm.
	* If the output of this transform is an <code>OctetStreamData</code>, then
	* this method returns <code>null</code> and the bytes are written to the
	* specified <code>OutputStream</code>. Otherwise, the
	* <code>OutputStream</code> is ignored and the method behaves as if
	* {@link #transform(Data, XMLCryptoContext)} were invoked.
	*
	* @param data the data to be transformed
	* @param context the <code>XMLCryptoContext</code> containing
	*    additional context (may be <code>null</code> if not applicable)
	* @param os the <code>OutputStream</code> that should be used to write
	*    the transformed data to
	* @return the transformed data (or <code>null</code> if the data was
	*    written to the <code>OutputStream</code> parameter)
	* @throws NullPointerException if <code>data</code> or <code>os</code>
	*    is <code>null</code>
	* @throws TransformException if an error occurs while executing the
	*    transform
	*/
	@:overload @:public @:abstract public function transform(data : javax.xml.crypto.Data, context : javax.xml.crypto.XMLCryptoContext, os : java.io.OutputStream) : javax.xml.crypto.Data;
	
	
}
