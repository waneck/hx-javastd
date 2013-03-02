package sun.reflect.generics.repository;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class FieldRepository extends sun.reflect.generics.repository.AbstractRepository<sun.reflect.generics.tree.TypeSignature>
{
	@:overload private function new(rawSig : String, f : sun.reflect.generics.factory.GenericsFactory) : Void;
	
	@:overload override private function parse(s : String) : sun.reflect.generics.tree.TypeSignature;
	
	/**
	* Static factory method.
	* @param rawSig - the generic signature of the reflective object
	* that this repository is servicing
	* @param f - a factory that will provide instances of reflective
	* objects when this repository converts its AST
	* @return a <tt>FieldRepository</tt> that manages the generic type
	* information represented in the signature <tt>rawSig</tt>
	*/
	@:overload public static function make(rawSig : String, f : sun.reflect.generics.factory.GenericsFactory) : sun.reflect.generics.repository.FieldRepository;
	
	/*
	* When queried for a particular piece of type information, the
	* general pattern is to consult the corresponding cached value.
	* If the corresponding field is non-null, it is returned.
	* If not, it is created lazily. This is done by selecting the appropriate
	* part of the tree and transforming it into a reflective object
	* using a visitor.
	* a visitor, which is created by feeding it the factory
	* with which the repository was created.
	*/
	@:overload public function getGenericType() : java.lang.reflect.Type;
	
	
}
