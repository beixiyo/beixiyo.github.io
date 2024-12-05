[@jl-org/tool](../README.md) / [Modules](../modules.md) / net

# Module: net

## Table of contents

### Classes

- [WS](../classes/net.WS.md)

### Type Aliases

- [SocketCb](net.md#socketcb)

### Functions

- [concurrentTask](net.md#concurrenttask)
- [retryReq](net.md#retryreq)

## Type Aliases

### SocketCb

Ƭ **SocketCb**\<`T`\>: (`event`: `MessageEvent`\<`T`\>) => `void`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Type declaration

▸ (`event`): `void`

##### Parameters

| Name | Type |
| :------ | :------ |
| `event` | `MessageEvent`\<`T`\> |

##### Returns

`void`

#### Defined in

[src/net/WS.ts:260](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/WS.ts#L260)

## Functions

### concurrentTask

▸ **concurrentTask**\<`T`\>(`tasks`, `maxCount?`): `Promise`\<`T`[]\>

并发任务数组 完成最大并发数后才会继续

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `tasks` | () => `Promise`\<`T`\>[] | `undefined` | 任务数组 |
| `maxCount` | `number` | `4` | 最大并发数，默认 4 |

#### Returns

`Promise`\<`T`[]\>

#### Defined in

[src/net/tool.ts:24](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/tool.ts#L24)

___

### retryReq

▸ **retryReq**\<`T`\>(`task`, `maxCount?`): `Promise`\<`T`\>

失败后自动重试请求

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `task` | () => `Promise`\<`T`\> | `undefined` | 任务数组 |
| `maxCount` | `number` | `3` | 重试次数，默认 3 |

#### Returns

`Promise`\<`T`\>

#### Defined in

[src/net/tool.ts:6](https://github.com/beixiyo/jl-tool/blob/45e2229/src/net/tool.ts#L6)
