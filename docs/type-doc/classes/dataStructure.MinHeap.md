[@jl-org/tool](../README.md) / [Modules](../modules.md) / [dataStructure](../modules/dataStructure.md) / MinHeap

# Class: MinHeap\<T\>

[dataStructure](../modules/dataStructure.md).MinHeap

最小堆算法

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`HeapItem`](../interfaces/dataStructure.HeapItem.md) |

## Table of contents

### Constructors

- [constructor](dataStructure.MinHeap.md#constructor)

### Properties

- [data](dataStructure.MinHeap.md#data)

### Accessors

- [size](dataStructure.MinHeap.md#size)

### Methods

- [isEmpty](dataStructure.MinHeap.md#isempty)
- [peek](dataStructure.MinHeap.md#peek)
- [pop](dataStructure.MinHeap.md#pop)
- [push](dataStructure.MinHeap.md#push)

## Constructors

### constructor

• **new MinHeap**\<`T`\>(): [`MinHeap`](dataStructure.MinHeap.md)\<`T`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`HeapItem`](../interfaces/dataStructure.HeapItem.md) |

#### Returns

[`MinHeap`](dataStructure.MinHeap.md)\<`T`\>

#### Defined in

[src/dataStructure/Heap.ts:5](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L5)

## Properties

### data

• `Readonly` **data**: `T`[]

#### Defined in

[src/dataStructure/Heap.ts:3](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L3)

## Accessors

### size

• `get` **size**(): `number`

#### Returns

`number`

#### Defined in

[src/dataStructure/Heap.ts:9](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L9)

## Methods

### isEmpty

▸ **isEmpty**(): `boolean`

#### Returns

`boolean`

#### Defined in

[src/dataStructure/Heap.ts:13](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L13)

___

### peek

▸ **peek**(): `T`

返回堆顶的值

#### Returns

`T`

#### Defined in

[src/dataStructure/Heap.ts:18](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L18)

___

### pop

▸ **pop**(): `undefined` \| `T`

删除并返回堆顶的值

#### Returns

`undefined` \| `T`

#### Defined in

[src/dataStructure/Heap.ts:27](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L27)

___

### push

▸ **push**(`...items`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `...items` | `T`[] |

#### Returns

`void`

#### Defined in

[src/dataStructure/Heap.ts:22](https://github.com/beixiyo/jl-tool/blob/45e2229/src/dataStructure/Heap.ts#L22)
