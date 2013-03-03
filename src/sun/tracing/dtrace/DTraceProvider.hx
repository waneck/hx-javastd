package sun.tracing.dtrace;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DTraceProvider extends sun.tracing.ProviderSkeleton
{
	@:overload @:protected override private function createProbe(m : java.lang.reflect.Method) : sun.tracing.ProbeSkeleton;
	
	@:overload @:public override public function dispose() : Void;
	
	/**
	* Magic routine which creates an implementation of the user's interface.
	*
	* This method uses the ProxyGenerator directly to bypass the
	* java.lang.reflect.proxy cache so that we get a unique class each
	* time it's called and can't accidently reuse a $Proxy class.
	*
	* @return an implementation of the user's interface
	*/
	@:overload @:public override public function newProxyInstance<T : com.sun.tracing.Provider>() : T;
	
	@:overload @:public override public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	@:overload @:public override public function getProviderName() : String;
	
	
}
