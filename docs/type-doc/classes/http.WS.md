[@jl-org/tool](../README.md) / [Modules](../modules.md) / [http](../modules/http.md) / WS

# Class: WS

[http](../modules/http.md).WS

根据网络状态自动重连的 WebSocket

## Hierarchy

- [`EventBus`](channel.EventBus.md)

  ↳ **`WS`**

## Table of contents

### Constructors

- [constructor](http.WS.md#constructor)

### Properties

- [customId](http.WS.md#customid)
- [heartbeatInterval](http.WS.md#heartbeatinterval)
- [maxReconnectAttempts](http.WS.md#maxreconnectattempts)
- [reconnectInterval](http.WS.md#reconnectinterval)

### Methods

- [close](http.WS.md#close)
- [connect](http.WS.md#connect)
- [emit](http.WS.md#emit)
- [off](http.WS.md#off)
- [on](http.WS.md#on)
- [once](http.WS.md#once)
- [onclose](http.WS.md#onclose)
- [onerror](http.WS.md#onerror)
- [onmessage](http.WS.md#onmessage)
- [onopen](http.WS.md#onopen)
- [send](http.WS.md#send)

## Constructors

### constructor

• **new WS**(`url`, `protocols?`): [`WS`](http.WS.md)

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `url` | `string` | 地址，如 ws://127.0.0.1:8080 |
| `protocols?` | `string` \| `string`[] | - |

#### Returns

[`WS`](http.WS.md)

**`Example`**

```ts
const ws = new WS('ws://127.0.0.1:8080')
ws.connect()
ws.onmessage(() => { ... })
```

#### Overrides

[EventBus](channel.EventBus.md).[constructor](channel.EventBus.md#constructor)

#### Defined in

http/WS.ts:54

## Properties

### customId

• **customId**: `string` = `'__WS_ID__'`

自定义 id 名称，标识是自己发送的消息，不会通过 onmessage 接收自己的消息

如果设置为空字符、null、undefined，则不会发送额外的 id

默认 '__WS_ID__'，如果你未进行任何设置，则会发送如下消息到服务端

**`Example`**

```ts
{
     *      __WS_ID__: '唯一id',
     *      message: '消息内容'
     * }
```

#### Defined in

http/WS.ts:42

___

### heartbeatInterval

• **heartbeatInterval**: `number` = `30000`

发送心跳数据间隔，默认 30000 ms（30s）

#### Defined in

http/WS.ts:21

___

### maxReconnectAttempts

• **maxReconnectAttempts**: `number` = `5`

最大重连数，默认 5

#### Defined in

http/WS.ts:16

___

### reconnectInterval

• **reconnectInterval**: `number` = `10000`

重连间隔，默认 10000 ms（10s）

#### Defined in

http/WS.ts:19

## Methods

### close

▸ **close**(): `void`

#### Returns

`void`

#### Defined in

http/WS.ts:109

___

### connect

▸ **connect**(): `void`

#### Returns

`void`

#### Defined in

http/WS.ts:91

___

### emit

▸ **emit**(`eventName`, `...args`): `void`

发送指定事件，通知所有订阅者

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `string` \| `number` \| `symbol` | 事件名 |
| `...args` | `any`[] | 不定参数 |

#### Returns

`void`

#### Inherited from

[EventBus](channel.EventBus.md).[emit](channel.EventBus.md#emit)

#### Defined in

channel/EventBus.ts:36

___

### off

▸ **off**(`eventName?`, `func?`): `void`

取关

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName?` | `string` \| `number` \| `symbol` | 空字符或者不传代表重置所有 |
| `func?` | `Function` | 要取关的函数，为空取关该事件的所有函数 |

#### Returns

`void`

#### Inherited from

[EventBus](channel.EventBus.md).[off](channel.EventBus.md#off)

#### Defined in

channel/EventBus.ts:53

___

### on

▸ **on**(`eventName`, `fn`): `void`

订阅

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `string` \| `number` \| `symbol` | 事件名 |
| `fn` | `Function` | 接收函数 |

#### Returns

`void`

#### Inherited from

[EventBus](channel.EventBus.md).[on](channel.EventBus.md#on)

#### Defined in

channel/EventBus.ts:18

___

### once

▸ **once**(`eventName`, `fn`): `void`

订阅一次

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName` | `string` \| `number` \| `symbol` | 事件名 |
| `fn` | `Function` | 接收函数 |

#### Returns

`void`

#### Inherited from

[EventBus](channel.EventBus.md).[once](channel.EventBus.md#once)

#### Defined in

channel/EventBus.ts:27

___

### onclose

▸ **onclose**\<`T`\>(`callBack`): `void`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `callBack` | [`SocketCb`](../modules/http.md#socketcb)\<`T`\> |

#### Returns

`void`

#### Defined in

http/WS.ts:67

___

### onerror

▸ **onerror**\<`T`\>(`callBack`): `void`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `callBack` | [`SocketCb`](../modules/http.md#socketcb)\<`T`\> |

#### Returns

`void`

#### Defined in

http/WS.ts:70

___

### onmessage

▸ **onmessage**\<`T`\>(`callBack`): `void`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `callBack` | [`SocketCb`](../modules/http.md#socketcb)\<`T`\> |

#### Returns

`void`

#### Defined in

http/WS.ts:64

___

### onopen

▸ **onopen**\<`T`\>(`callBack`): `void`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `callBack` | [`SocketCb`](../modules/http.md#socketcb)\<`T`\> |

#### Returns

`void`

#### Defined in

http/WS.ts:61

___

### send

▸ **send**(`message`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `message` | `string` \| `Blob` \| `ArrayBufferView` \| `ArrayBufferLike` |

#### Returns

`void`

#### Defined in

http/WS.ts:74
