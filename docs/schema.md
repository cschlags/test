### Schema

#### Client

Column              | Type
--------------------|--------------------
`name`              | `string`

#### ClientUser

Column              | Type
--------------------|--------------------
`client`            | `belongs_to`
`email`             | `string`
`password_digest`   | `string`
`remember_token`    | `string`

#### Admin

Column              | Type
--------------------|--------------------
`email`             | `string`
`posts`             | `has_many`
`password_digest`   | `string`
`remember_token`    | `string`

#### Post

Column              | Type
--------------------|--------------------
`admin`             | `belongs_to`
`title`             | `string`
`body`              | `text`
`hero`              | `attachment`

#### Installation

Column              | Type
--------------------|--------------------
`label`             | `string`
`latitude`          | `float`
`longitude`         | `float`

#### Office

Column              | Type
--------------------|--------------------
`label`             | `string`
`address_line1`     | `string`
`address_line2`     | `string`
`address_line3`     | `string`
`latitude`          | `float`
`longitude`         | `float`

#### Employee

Column              | Type
--------------------|--------------------
`office`            | `belongs_to`
`name`              | `string`
`photo`             | `attachment`
