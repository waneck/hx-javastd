package com.sun.xml.internal.bind.v2.runtime;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class FilterTransducer<T> implements com.sun.xml.internal.bind.v2.runtime.Transducer<T>
{
	/**
	* {@link Transducer} that delegates to another {@link Transducer}.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:protected @:final private var core(default, null) : com.sun.xml.internal.bind.v2.runtime.Transducer<T>;
	
	@:overload @:protected private function new(core : com.sun.xml.internal.bind.v2.runtime.Transducer<T>) : Void;
	
	@:overload @:public @:final public function isDefault() : Bool;
	
	@:overload @:public public function useNamespace() : Bool;
	
	@:overload @:public public function declareNamespace(o : T, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public public function print(o : T) : java.lang.CharSequence;
	
	@:overload @:public public function parse(lexical : java.lang.CharSequence) : T;
	
	@:overload @:public public function writeText(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, o : T, fieldName : String) : Void;
	
	@:overload @:public public function writeLeafElement(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, tagName : com.sun.xml.internal.bind.v2.runtime.Name, o : T, fieldName : String) : Void;
	
	@:overload @:public public function getTypeName(instance : T) : javax.xml.namespace.QName;
	
	
}
