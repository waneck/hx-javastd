package sun.tracing;
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
extern class NullProviderFactory extends com.sun.tracing.ProviderFactory
{
	/**
	* Creates and returns a Null provider.
	*
	* See comments at {@code ProviderSkeleton.createProvider()} for more
	* details.
	*
	* @return a provider whose probe trigger are no-ops.
	*/
	@:overload override public function createProvider<T : com.sun.tracing.Provider>(cls : Class<T>) : T;
	
	
}
@:internal extern class NullProvider extends sun.tracing.ProviderSkeleton
{
	@:overload override private function createProbe(m : java.lang.reflect.Method) : sun.tracing.ProbeSkeleton;
	
	
}
@:internal extern class NullProbe extends sun.tracing.ProbeSkeleton
{
	@:overload public function new(parameters : java.NativeArray<Class<Dynamic>>) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	@:overload override public function uncheckedTrigger(args : java.NativeArray<Dynamic>) : Void;
	
	
}
