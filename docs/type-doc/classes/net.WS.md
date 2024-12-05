[@jl-org/tool](../README.md) / [Modules](../modules.md) / [net](../modules/net.md) / WS

# Class: WS

[net](../modules/net.md).WS

根据网络状态自动重连的 WebSocket

## Hierarchy

- [`EventBus`](channel.EventBus.md)

  ↳ **`WS`**

## Table of contents

### Constructors

- [constructor](net.WS.md#constructor)

### Properties

- [customId](net.WS.md#customid)
- [heartbeatInterval](net.WS.md#heartbeatinterval)
- [maxReconnectAttempts](net.WS.md#maxreconnectattempts)
- [reconnectInterval](net.WS.md#reconnectinterval)

### Methods

- [close](net.WS.md#close)
- [connect](net.WS.md#connect)
- [emit](net.WS.md#emit)
- [off](net.WS.md#off)
- [on](net.WS.md#on)
- [once](net.WS.md#once)
- [onclose](net.WS.md#onclose)
- [onerror](net.WS.md#onerror)
- [onmessage](net.WS.md#onmessage)
- [onopen](net.WS.md#onopen)
- [send](net.WS.md#send)

## Constructors

### constructor

• **new WS**(`url`, `protocols?`): [`WS`](net.WS.md)

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `url` | `string` | 地址，如 ws://127.0.0.1:8080 |
| `protocols?` | `string` \| `string`[] | - |

#### Returns

[`WS`](net.WS.md)

**`Example`**

```ts
const ws = new WS('ws://127.0.0.1:8080')
ws.connect()
ws.onmessage(() => { ... })
```

#### Overrides

[EventBus](channel.EventBus.md).[constructor](channel.EventBus.md#constructor)

#### Defined in

[src/net/WS.ts:59](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L59)

## Properties

### customId

• **customId**: `undefined` \| ``null`` \| `string` = `'__WS_ID__'`

自定义 id 名称，标识是自己发送的消息，不会通过 onmessage 接收自己的消息

如果设置为空字符、null、undefined，则不会发送额外的 id

默认 '__WS_ID__'，如果你未进行任何设置，则会发送如下消息到服务端

**`Example`**

```ts
{
     __WS_ID__: Date.now().toString(),
     message: '消息内容'
}
```

#### Defined in

[src/net/WS.ts:44](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L44)

___

### heartbeatInterval

• **heartbeatInterval**: `number` = `30000`

发送心跳数据间隔，默认 30000 ms（30s）

#### Defined in

[src/net/WS.ts:21](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L21)

___

### maxReconnectAttempts

• **maxReconnectAttempts**: `number` = `5`

最大重连数，默认 5

#### Defined in

[src/net/WS.ts:16](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L16)

___

### reconnectInterval

• **reconnectInterval**: `number` = `10000`

重连间隔，默认 10000 ms（10s）

#### Defined in

[src/net/WS.ts:19](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L19)

## Methods

### close

▸ **close**(): `void`

#### Returns

`void`

#### Defined in

[src/net/WS.ts:114](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L114)

___

### connect

▸ **connect**(): `void`

#### Returns

`void`

#### Defined in

[src/net/WS.ts:96](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L96)

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

[src/channel/EventBus.ts:36](https://github.com/beixiyo/jl-tool/blob/45e2229/src/channel/EventBus.ts#L36)

___

### off

▸ **off**(`eventName?`, `func?`): `void`

取关

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `eventName?` | `string` \| `number` \| `symbol` | 不传代表重置所有 |
| `func?` | `Function` | 要取关的函数，为空取关该事件的所有函数 |

#### Returns

`void`

#### Inherited from

[EventBus](channel.EventBus.md).[off](channel.EventBus.md#off)

#### Defined in

[src/channel/EventBus.ts:53](https://github.com/beixiyo/jl-tool/blob/45e2229/src/channel/EventBus.ts#L53)

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

[src/channel/EventBus.ts:18](https://github.com/beixiyo/jl-tool/blob/45e2229/src/channel/EventBus.ts#L18)

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

[src/channel/EventBus.ts:27](https://github.com/beixiyo/jl-tool/blob/45e2229/src/channel/EventBus.ts#L27)

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
| `callBack` | [`SocketCb`](../modules/net.md#socketcb)\<`T`\> |

#### Returns

`void`

#### Defined in

[src/net/WS.ts:72](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L72)

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
| `callBack` | [`SocketCb`](../modules/net.md#socketcb)\<`T`\> |

#### Returns

`void`

#### Defined in

[src/net/WS.ts:75](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L75)

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
| `callBack` | [`SocketCb`](../modules/net.md#socketcb)\<`T`\> |

#### Returns

`void`

#### Defined in

[src/net/WS.ts:69](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L69)

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
| `callBack` | [`SocketCb`](../modules/net.md#socketcb)\<`T`\> |

#### Returns

`void`

#### Defined in

[src/net/WS.ts:66](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L66)

___

### send

▸ **send**(`message`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `message` | `string` \| `Blob` \| `ArrayBufferLike` \| `ArrayBufferView` |

#### Returns

`void`

#### Defined in

[src/net/WS.ts:79](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L79)
