package org.relaxng.datatype.helpers;
/**
* Copyright (c) 2001, Thai Open Source Software Center Ltd
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are
* met:
*
*     Redistributions of source code must retain the above copyright
*     notice, this list of conditions and the following disclaimer.
*
*     Redistributions in binary form must reproduce the above copyright
*     notice, this list of conditions and the following disclaimer in
*     the documentation and/or other materials provided with the
*     distribution.
*
*     Neither the name of the Thai Open Source Software Center Ltd nor
*     the names of its contributors may be used to endorse or promote
*     products derived from this software without specific prior written
*     permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
* A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE REGENTS OR
* CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
* EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
* PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
* PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
* LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
* NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
* SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
extern class DatatypeLibraryLoader implements org.relaxng.datatype.DatatypeLibraryFactory
{
	@:overload public function createDatatypeLibrary(uri : String) : org.relaxng.datatype.DatatypeLibrary;
	
	
}
@:native('org$relaxng$datatype$helpers$DatatypeLibraryLoader$Service') @:internal extern class DatatypeLibraryLoader_Service
{
	@:overload public function new(cls : Class<Dynamic>) : Void;
	
	@:overload public function getProviders() : java.util.Enumeration<Dynamic>;
	
	
}
@:native('org$relaxng$datatype$helpers$DatatypeLibraryLoader$Service$ProviderEnumeration') @:internal extern class DatatypeLibraryLoader_Service_ProviderEnumeration implements java.util.Enumeration<Dynamic>
{
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : Dynamic;
	
	
}
@:native('org$relaxng$datatype$helpers$DatatypeLibraryLoader$Service$Singleton') @:internal extern class DatatypeLibraryLoader_Service_Singleton implements java.util.Enumeration<Dynamic>
{
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : Dynamic;
	
	
}
@:native('org$relaxng$datatype$helpers$DatatypeLibraryLoader$Service$Loader') @:internal extern class DatatypeLibraryLoader_Service_Loader
{
	
}
@:native('org$relaxng$datatype$helpers$DatatypeLibraryLoader$Service$Loader2') @:internal extern class DatatypeLibraryLoader_Service_Loader2 extends org.relaxng.datatype.helpers.DatatypeLibraryLoader.DatatypeLibraryLoader_Service_Loader
{
	
}
