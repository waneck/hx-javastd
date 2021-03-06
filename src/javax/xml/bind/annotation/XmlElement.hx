package javax.xml.bind.annotation;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* Maps a JavaBean property to a XML element derived from property name.
*
* <p> <b>Usage</b> </p>
* <p>
* <tt>@XmlElement</tt> annotation can be used with the following program
* elements:
* <ul>
*   <li> a JavaBean property </li>
*   <li> non static, non transient field </li>
*   <li> within {@link XmlElements}
* <p>
*
* </ul>
*
* The usage is subject to the following constraints:
* <ul>
*   <li> This annotation can be used with following annotations:
*            {@link XmlID},
*            {@link XmlIDREF},
*            {@link XmlList},
*            {@link XmlSchemaType},
*            {@link XmlValue},
*            {@link XmlAttachmentRef},
*            {@link XmlMimeType},
*            {@link XmlInlineBinaryData},
*            {@link XmlElementWrapper},
*            {@link XmlJavaTypeAdapter}</li>
*   <li> if the type of JavaBean property is a collection type of
*        array, an indexed property, or a parameterized list, and
*        this annotation is used with {@link XmlElements} then,
*        <tt>@XmlElement.type()</tt> must be DEFAULT.class since the
*        collection item type is already known. </li>
* </ul>
*
* <p>
* A JavaBean property, when annotated with @XmlElement annotation
* is mapped to a local element in the XML Schema complex type to
* which the containing class is mapped.
*
* <p>
* <b>Example 1: </b> Map a public non static non final field to local
* element
* <pre>
*     //Example: Code fragment
*     public class USPrice {
*         &#64;XmlElement(name="itemprice")
*         public java.math.BigDecimal price;
*     }
*
*     &lt;!-- Example: Local XML Schema element -->
*     &lt;xs:complexType name="USPrice"/>
*       &lt;xs:sequence>
*         &lt;xs:element name="itemprice" type="xs:decimal" minOccurs="0"/>
*       &lt;/sequence>
*     &lt;/xs:complexType>
*   </pre>
* <p>
*
* <b> Example 2: </b> Map a field to a nillable element.
*   <pre>
*
*     //Example: Code fragment
*     public class USPrice {
*         &#64;XmlElement(nillable=true)
*         public java.math.BigDecimal price;
*     }
*
*     &lt;!-- Example: Local XML Schema element -->
*     &lt;xs:complexType name="USPrice">
*       &lt;xs:sequence>
*         &lt;xs:element name="price" type="xs:decimal" nillable="true" minOccurs="0"/>
*       &lt;/sequence>
*     &lt;/xs:complexType>
*   </pre>
* <p>
* <b> Example 3: </b> Map a field to a nillable, required element.
*   <pre>
*
*     //Example: Code fragment
*     public class USPrice {
*         &#64;XmlElement(nillable=true, required=true)
*         public java.math.BigDecimal price;
*     }
*
*     &lt;!-- Example: Local XML Schema element -->
*     &lt;xs:complexType name="USPrice">
*       &lt;xs:sequence>
*         &lt;xs:element name="price" type="xs:decimal" nillable="true" minOccurs="1"/>
*       &lt;/sequence>
*     &lt;/xs:complexType>
*   </pre>
* <p>
*
* <p> <b>Example 4: </b>Map a JavaBean property to an XML element
* with anonymous type.</p>
* <p>
* See Example 6 in @{@link XmlType}.
*
* <p>
* @author Sekhar Vajjhala, Sun Microsystems, Inc.
* @since JAXB2.0
*/
@:require(java0) extern interface XmlElement
{
	
}
