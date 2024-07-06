[@jl-org/tool](../README.md) / [Modules](../modules.md) / [tools/Clock](../modules/tools_Clock.md) / Clock

# Class: Clock

[tools/Clock](../modules/tools_Clock.md).Clock

## Table of contents

### Constructors

- [constructor](tools_Clock.Clock.md#constructor)

### Properties

- [curTime](tools_Clock.Clock.md#curtime)
- [delta](tools_Clock.Clock.md#delta)
- [startTime](tools_Clock.Clock.md#starttime)
- [stop](tools_Clock.Clock.md#stop)

### Accessors

- [elapsed](tools_Clock.Clock.md#elapsed)
- [elapsedMS](tools_Clock.Clock.md#elapsedms)

### Methods

- [start](tools_Clock.Clock.md#start)

## Constructors

### constructor

• **new Clock**(`timeApi?`): [`Clock`](tools_Clock.Clock.md)

利用 requestAnimationFrame 循环计算时间，可获取
- 帧间时间间隔
- 累计时间
- 起始时间
- 当前时间

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `timeApi` | ``"date"`` \| ``"performance"`` | `'performance'` | 用来选取获取时间的 Api，`performance` 更加精准（默认值） |

#### Returns

[`Clock`](tools_Clock.Clock.md)

#### Defined in

tools/Clock.ts:27

## Properties

### curTime

• **curTime**: `number`

当前时间

#### Defined in

tools/Clock.ts:11

___

### delta

• **delta**: `number` = `0`

每帧时间间隔

#### Defined in

tools/Clock.ts:14

___

### startTime

• **startTime**: `number`

开始时间

#### Defined in

tools/Clock.ts:9

___

### stop

• **stop**: `VoidFunction`

停止时间计算函数

#### Defined in

tools/Clock.ts:17

## Accessors

### elapsed

• `get` **elapsed**(): `number`

累计时间（秒）

#### Returns

`number`

#### Defined in

tools/Clock.ts:58

___

### elapsedMS

• `get` **elapsedMS**(): `number`

累计时间（毫秒）

#### Returns

`number`

#### Defined in

tools/Clock.ts:53

## Methods

### start

▸ **start**(): `void`

开始计算时间，构造器默认调用一次

#### Returns

`void`

#### Defined in

tools/Clock.ts:41
