package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: SerializerFactory.java,v 1.2.4.1 2005/09/15 08:15:24 suresh_emailid Exp $
*/
extern class SerializerFactory
{
	/**
	* Returns a serializer for the specified output method. The output method
	* is specified by the value of the property associated with the "method" key.
	* If no implementation exists that supports the specified output method
	* an exception of some type will be thrown.
	* For a list of the output "method" key values see {@link Method}.
	*
	* @param format The output format, minimally the "method" property must be set.
	* @return A suitable serializer.
	* @throws IllegalArgumentException if method is
	* null or an appropriate serializer can't be found
	* @throws Exception if the class for the serializer is found but does not
	* implement ContentHandler.
	* @throws WrappedRuntimeException if an exception is thrown while trying to find serializer
	*/
	@:overload public static function getSerializer(format : java.util.Properties) : com.sun.org.apache.xml.internal.serializer.Serializer;
	
	
}
