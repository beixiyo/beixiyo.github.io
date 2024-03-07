[@jl-org/tool](../README.md) / [Modules](../modules.md) / [tools/tools](../modules/tools_tools.md) / EventBus

# Class: EventBus

[tools/tools](../modules/tools_tools.md).EventBus

消息订阅与派发

## Table of contents

### Constructors

- [constructor](tools_tools.EventBus.md#constructor)

### Properties

- [eventMap](tools_tools.EventBus.md#eventmap)

### Methods

- [emit](tools_tools.EventBus.md#emit)
- [off](tools_tools.EventBus.md#off)
- [on](tools_tools.EventBus.md#on)
- [once](tools_tools.EventBus.md#once)

## Constructors

### constructor

• **new EventBus**(): [`EventBus`](tools_tools.EventBus.md)

#### Returns

[`EventBus`](tools_tools.EventBus.md)

## Properties

### eventMap

• **eventMap**: `Map`\<`string`, `Set`\<\{ `fn`: `Function` ; `once?`: `boolean`  }\>\>

#### Defined in

tools/tools.ts:421

## Methods

### emit

▸ **emit**(`eventName`, `...args`): `void`

发送

#### Parameters

| Name | Type |
| :------ | :------ |
| `eventName` | `string` |
| `...args` | `any`[] |

#### Returns

`void`

#### Defined in

tools/tools.ts:437

___

### off

▸ **off**(`eventName?`, `func?`): `void`

取关

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName?` | `string` | 空字符或者不传代表重置所有 |
| `func?` | `Function` | 要取关的函数 为空取关该事件的所有函数 |

#### Returns

`void`

#### Defined in

tools/tools.ts:453

___

### on

▸ **on**(`eventName`, `fn`): `void`

订阅

#### Parameters

| Name | Type |
| :------ | :------ |
| `eventName` | `string` |
| `fn` | `Function` |

#### Returns

`void`

#### Defined in

tools/tools.ts:427

___

### once

▸ **once**(`eventName`, `fn`): `void`

订阅一次

#### Parameters

| Name | Type |
| :------ | :------ |
| `eventName` | `string` |
| `fn` | `Function` |

#### Returns

`void`

#### Defined in

tools/tools.ts:432
